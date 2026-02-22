import 'package:lab2/art1.dart';

class ArtDataService {
static List<Art> z = [];
static int getCount() { return (z.length); }
static void addArt (String artId, String artTitle,
String artArtist, String artImage){
z.add( Art( artId, artTitle,
artArtist, artImage));
}
static Art getArtAt(int index){
return (z[index]);
}
static Art? getArtByArtId (String id){
// loop to match artId
for (int i=0; i<z.length; i++){
if (z[i].artId == id){
return z[i];
}
}
return null; }
static void updateArtAt(int index, String
newTitle, String newArtist, String newImage){
z[index].title = newTitle;
z[index].artist = newArtist;
z[index].image = newImage;
}
static void updateArtByArtId(String id,
String newTitle,
String newArtist,
String newImage) {
for (int i = 0; i < z.length; i++) {
if (z[i].artId == id) {
z[i].title = newTitle;
z[i].artist = newArtist;
z[i].image = newImage;
}
}
}
static void removeArtAt(int index){
z.removeAt(index);
}
static void removeArtByArtId(String id) {
for (int i = 0; i < z.length; i++) {
if (z[i].artId == id) {
z.removeAt(i);
}
}
}
}