package sokoban;

import javafx.scene.control.Alert;

import java.io.*;

public class FileStorageImpl implements FileStorage {
    @SuppressWarnings("ResultOfMethodCallIgnored")
    public static void storeFile(String location, Serializable object) {
        try {
            File file = new File(location);
            file.getParentFile().mkdirs(); // Will create parent directories if not exists
            file.createNewFile();
            FileOutputStream s = new FileOutputStream(file,false);

            ObjectOutputStream out = new ObjectOutputStream(s);
            out.writeObject(object);
            out.close();
            s.close();
        } catch (IOException e) {
            e.printStackTrace();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Error!");
            alert.setHeaderText("Something went wrong!");
            alert.setContentText("There was an error when writing to file. Please try again.");

            alert.showAndWait();
        }
    }


    public static Object readFile(String location, Object object) {
        try {
            // Reading the object from a file
            FileInputStream file = new FileInputStream(location);
            ObjectInputStream in = new ObjectInputStream(file);

            // Method for deserialization of object
            object = in.readObject();

            in.close();
            file.close();
            return object;
        } catch (IOException | ClassNotFoundException e) {
            //e.printStackTrace();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Error!");
            alert.setHeaderText("Something went wrong!");
            alert.setContentText("There was an error when reading the file. Please try again.");

            alert.showAndWait();
            return null;
        }
    }
}
