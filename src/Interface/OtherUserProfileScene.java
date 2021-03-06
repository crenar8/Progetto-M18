package Interface;

import TradeCenter.Card.Card;
import TradeCenter.Card.Description;
import TradeCenter.Customers.Customer;
import javafx.embed.swing.SwingFXUtils;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.FlowPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Text;


public class OtherUserProfileScene {

    static StackPane cardList;
    static BorderPane borderPane;
    static ScrollPane cardGrid;
    static HBox buttons;
    static HBox hBox;
    static boolean watchingWishlist = false;

    static Customer otherCustomer;
    static String displayed = "Collection";

    static BorderPane display(Customer myCustomer, Customer otherUser) {
        final Customer otherCustomer = otherUser;
        borderPane = new BorderPane();
        cardList = new StackPane();

        buttons = new HBox();
        buttons.setPadding(new Insets(10));
        buttons.setSpacing(10);
        Button collection = new Button("Collection");
        Button wishlist = new Button("Wishlist");
        Button trade = new Button("Trade");
        buttons.getChildren().addAll(collection, wishlist, trade);
        HBox titleBox = new HBox();
        Label title = new Label(otherUser.getUsername() + "'s" + displayed);
        titleBox.setAlignment(Pos.CENTER);
        title.setStyle("-fx-font-weight: bold");
        title.setScaleX(1.35);
        title.setScaleY(1.35);
        titleBox.getChildren().add(title);
        titleBox.setPadding(new Insets(10));
        title.setAlignment(Pos.CENTER);


        hBox = new HBox();
        hBox.getChildren().addAll(buttons, titleBox);
        hBox.setPadding(new Insets(10));
        hBox.setSpacing(400);
        hBox.setStyle("-fx-background-color: #cc003a");

        borderPane.setCenter(displayCollection(otherCustomer));
        borderPane.setBottom(hBox);


        collection.setOnAction(event -> {
            watchingWishlist = false;
            cardList.getChildren().removeAll(cardList.getChildren());
            cardList.getChildren().add(displayCollection(otherCustomer));
            borderPane.setCenter(cardList);
            MainWindow.refreshDynamicContent(borderPane);
        });
        wishlist.setOnAction(event -> {
            watchingWishlist = true;
            cardList.getChildren().removeAll(cardList.getChildren());
            cardList.getChildren().add(displayWishlist(otherCustomer));
            borderPane.setCenter(cardList);
            MainWindow.refreshDynamicContent(borderPane);
        });
        trade.setOnAction(event -> {
            MainWindow.refreshDynamicContent(TradeScene.display(myCustomer, otherCustomer));// todo mettere i parametri, della fuznione
        });

        return borderPane;
    }

    private static ScrollPane displayCollection(Customer customer){
        FlowPane flowPane = new FlowPane();
        cardGrid = new ScrollPane();
        flowPane.setStyle("-fx-background-color: #fbff2e");

        for (Card card: customer.getCollection()){
            BorderPane cardPane = new BorderPane();
            Image image = SwingFXUtils.toFXImage(card.getDescription().getPic(), null);
            ImageView imageView = new ImageView();
            imageView.setImage(image);
            imageView.setPreserveRatio(true);
            imageView.setFitHeight(285);
            cardPane.setCenter(imageView);
            EventHandler<MouseEvent> eventHandlerBox =
                    new EventHandler<javafx.scene.input.MouseEvent>() {

                        @Override
                        public void handle(javafx.scene.input.MouseEvent e) {
                            MainWindow.refreshDynamicContent(Demo.display(imageView, "other"));
                        }
                    };

            imageView.addEventHandler(javafx.scene.input.MouseEvent.MOUSE_CLICKED, eventHandlerBox);
            flowPane.getChildren().add(cardPane);
            flowPane.setMargin(cardPane, new Insets(10, 5, 10, 5));
        }

        cardGrid.setFitToWidth(true);
        cardGrid.setFitToHeight(true);
        cardGrid.setContent(flowPane);
        cardGrid.setStyle("-fx-background-color: #fffd14");
        return cardGrid;
    }
    private static ScrollPane displayWishlist(Customer customer){
        FlowPane flowPane = new FlowPane();
        cardGrid = new ScrollPane();
        flowPane.setStyle("-fx-background-color: #fff910");

        for (Description card: customer.getWishList()){
            BorderPane cardPane = new BorderPane();
            Image image = SwingFXUtils.toFXImage(card.getPic(), null);
            ImageView imageView = new ImageView();
            imageView.setImage(image);
            imageView.setPreserveRatio(true);
            imageView.setFitHeight(300);
            cardPane.setCenter(imageView);
            EventHandler<MouseEvent> eventHandlerBox =
                    new EventHandler<javafx.scene.input.MouseEvent>() {

                        @Override
                        public void handle(javafx.scene.input.MouseEvent e) {
                            MainWindow.refreshDynamicContent(Demo.display(imageView, "other_user"));
                        }
                    };

            imageView.addEventHandler(javafx.scene.input.MouseEvent.MOUSE_CLICKED, eventHandlerBox);
            flowPane.getChildren().add(cardPane);
            flowPane.setMargin(cardPane, new Insets(10, 5, 10, 5));
        }
        cardGrid.setFitToWidth(true);
        cardGrid.setFitToHeight(true);
        cardGrid.setContent(flowPane);
        cardGrid.setStyle("-fx-background-color: #fffb48");
        return cardGrid;
    }

    public static BorderPane refresh(){
        cardList.getChildren().removeAll(cardList.getChildren());
        if(watchingWishlist){
            //return to whishlist
            displayed = "Wishlist";
            cardList.getChildren().add(displayWishlist(otherCustomer));
        }else{
            displayed = "Collection";
            cardList.getChildren().add(displayCollection(otherCustomer));
        }
        borderPane.setCenter(cardList);
        return borderPane;
    }
}