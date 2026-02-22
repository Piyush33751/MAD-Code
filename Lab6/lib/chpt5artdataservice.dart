import 'chpt5Art.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ArtDataService {
static String? tappedTitle="";
static String? tappedArtist="";
static String? tappedImage="";
static String tappedId="";

static List<Art> z = [];

static CollectionReference artData = FirebaseFirestore.instance.collection('artdata');

static int getCount() { return (z.length); }

static void addArt (String artId, String artTitle,
String artArtist, String artImage) async{
z.add( Art( artId, artTitle,
artArtist, artImage));

final DocumentReference dr = await artData.add({
'artId': artId,
'title': artTitle,
'artist': artArtist,
'image': artImage,
});

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
return null;
}
static void updateArtAt(int index, String?
newTitle, String? newArtist, String? newImage){
z[index].title = newTitle;
tappedTitle=newTitle;
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
print(" No match found for ID: $id");
}
static void removeArtAt(int index) async{

String idToDelete = z[index].artId??"";
z.removeAt(index);

QuerySnapshot qs = await artData.limit(1).where("artId", isEqualTo: idToDelete).get();
DocumentSnapshot doc = qs.docs[0];
doc.reference.delete();
}
static void removeArtByArtId(String idToDelete) async{
for (int i = 0; i < z.length; i++) {
if (z[i].artId == idToDelete) {
z.removeAt(i);

QuerySnapshot qs = await artData.limit(1).where("artId", isEqualTo: idToDelete).get();
DocumentSnapshot doc = qs.docs[0];
doc.reference.delete();

break;
}
}
}

static Future<void> getAllArts() async {
z.clear();

QuerySnapshot qs = await artData.get();
// if there is document, read in each document (loop)
// use the artId, title, artist, image
// to create an Art object and add it into local storage
if (qs!=null){
for (int i = 0; i < qs.docs.length; i++) {
DocumentSnapshot doc = qs.docs[i];
Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
z.add(Art(data['artId'], data['title'], data['artist'], data['image']));
}
}}


}