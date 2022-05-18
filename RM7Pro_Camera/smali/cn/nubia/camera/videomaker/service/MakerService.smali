.class public Lcn/nubia/camera/videomaker/service/MakerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/videomaker/service/MakerService$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/nubia/camera/videomaker/service/b;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/videomaker/service/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcn/nubia/camera/videomaker/a/b;

.field private static volatile g:Z

.field private static volatile h:Z

.field private static i:Landroid/location/Location;


# instance fields
.field private b:Lcn/nubia/camera/videomaker/service/MakerService$a;

.field private c:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcn/nubia/camera/videomaker/service/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcn/nubia/camera/videomaker/service/b;-><init>(I)V

    sput-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcn/nubia/camera/videomaker/service/MakerService;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Lcn/nubia/camera/videomaker/service/MakerService$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/service/MakerService$1;-><init>(Lcn/nubia/camera/videomaker/service/MakerService;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()I
    .locals 1

    .line 572
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/a/b;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/service/MakerService;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 684
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "mime_type"

    const-string v2, "video/mp4"

    .line 685
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_data"

    .line 686
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object v1, Lcn/nubia/camera/videomaker/service/MakerService;->i:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 689
    sget-object v1, Lcn/nubia/camera/videomaker/service/MakerService;->i:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/service/MakerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 694
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 694
    invoke-virtual {p0, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->sendBroadcast(Landroid/content/Intent;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/service/MakerService;)Lcn/nubia/camera/videomaker/service/MakerService$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->b:Lcn/nubia/camera/videomaker/service/MakerService$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MakerService"

    const-string v1, "createVideoEditor"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v1, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, 0x1

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-static {p0, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MakerService"

    const-string v1, "startCommand"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 170
    invoke-static {v0}, Lcn/nubia/camera/videomaker/b/d;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rid"

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    sget-object v1, Lcn/nubia/camera/videomaker/service/MakerService;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const-string p1, "MakerService"

    const-string v0, "removeAudioTrack:"

    .line 278
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object p1, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v0, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {p1, p0, v0}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "op"

    const/16 v1, 0x1f8

    .line 280
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-static {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioTrackUri uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v1, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op"

    const/16 v2, 0x1f6

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "filename"

    .line 211
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "loop"

    .line 212
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    invoke-static {p0, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAudioTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakerService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object p1, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v0, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {p1, p0, v0}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "op"

    const/16 v1, 0x1f9

    .line 274
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    invoke-static {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exportVideoEditor:filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v1, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, 0x2

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "filename"

    .line 296
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "height"

    .line 297
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "bitrate"

    .line 298
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "fps"

    .line 299
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-static {p0, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioTrackNoUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v1, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op"

    const/16 v2, 0x1f7

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "filename"

    .line 220
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "loop"

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-static {p0, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "MakerService"

    if-nez p1, :cond_0

    const-string v1, "addAudioTrackRecord size: null"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAudioTrackRecord size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v1, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1fa

    const-string v2, "op"

    .line 233
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "filename"

    .line 234
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "loop"

    .line 235
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    invoke-static {p0, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;J)V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMediaItemImages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MakerService"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object p2, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v0, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {p2, p0, v0}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "addMediaItemImages"

    .line 256
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "op"

    const/16 v0, 0x1f4

    .line 257
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "images"

    .line 258
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-static {p0, p2}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeRequest opMode 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->c:Landroid/os/Handler;

    new-instance v8, Lcn/nubia/camera/videomaker/service/MakerService$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/videomaker/service/MakerService$2;-><init>(Lcn/nubia/camera/videomaker/service/MakerService;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Landroid/location/Location;)V
    .locals 0

    .line 971
    sput-object p0, Lcn/nubia/camera/videomaker/service/MakerService;->i:Landroid/location/Location;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/service/MakerService;Landroid/content/Intent;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/videomaker/service/a;)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInteruptImagesFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sput-boolean p0, Lcn/nubia/camera/videomaker/service/MakerService;->h:Z

    return-void
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 247
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v1, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, 0x6

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-static {p0, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelExportVideoEditor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 557
    sput-boolean v0, Lcn/nubia/camera/videomaker/service/MakerService;->g:Z

    .line 558
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 559
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    const-class v1, Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, 0x3

    .line 560
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "filename"

    .line 561
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-static {p0, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "op"

    const/4 v1, -0x1

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalizeRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->e:Ljava/util/Map;

    const-string v2, "rid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalizeRequest mPendingIntents.size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 339
    iget-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "finalizeRequest"

    .line 344
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static b(Lcn/nubia/camera/videomaker/service/a;)V
    .locals 1

    .line 182
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c()Lcn/nubia/camera/videomaker/service/b;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    .line 350
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->e:Ljava/util/Map;

    const-string v1, "rid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    iget-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 602
    sput-boolean v0, Lcn/nubia/camera/videomaker/service/MakerService;->g:Z

    .line 603
    new-instance v0, Lcn/nubia/camera/videomaker/service/MakerService$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService$3;-><init>(Lcn/nubia/camera/videomaker/service/MakerService;Landroid/content/Intent;)V

    .line 673
    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/service/MakerService$3;->start()V

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcn/nubia/camera/videomaker/service/MakerService;->g:Z

    return v0
.end method

.method static synthetic e()Lcn/nubia/camera/videomaker/a/b;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    return-object v0
.end method

.method private e(Landroid/content/Intent;)V
    .locals 3

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeRequest opMode 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->c:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/camera/videomaker/service/MakerService$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService$4;-><init>(Lcn/nubia/camera/videomaker/service/MakerService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic f()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    .line 592
    :try_start_0
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    if-eqz v0, :cond_0

    const-string v0, "MakerService"

    const-string v1, "releaseEditor: "

    .line 593
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/a/b;->e()V

    const/4 v0, 0x0

    .line 595
    sput-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    .line 597
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 12

    const-string v0, "op"

    const/4 v1, -0x1

    .line 721
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIntent op="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "filename"

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    const-string v4, "Media file not found: "

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_1

    .line 899
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "OP_AUDIO_TRACK_ADD_LIST: "

    .line 839
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 843
    sget-object v1, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/videomaker/a/b;->a(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 844
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 846
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 841
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media file list not found: "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "OP_AUDIO_TRACK_REMOVE_ALL"

    .line 859
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v0, v5}, Lcn/nubia/camera/videomaker/a/b;->b(Ljava/util/ArrayList;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    .line 861
    invoke-direct/range {v6 .. v11}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 862
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_2
    const-string v0, "OP_AUDIO_TRACK_REMOVE"

    .line 851
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/a/b;->c()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 853
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 854
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 825
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_AUDIO_TRACK_ADD_NO_URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 830
    sget-object v1, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/videomaker/a/b;->c(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 831
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 833
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 828
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 798
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/service/MakerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 801
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v3

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    if-eqz v1, :cond_3

    .line 805
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 808
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_AUDIO_TRACK_ADD_URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v6, :cond_4

    .line 814
    :try_start_4
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v0, v6}, Lcn/nubia/camera/videomaker/a/b;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 819
    :try_start_5
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 820
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 810
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    move-object v5, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v5, :cond_5

    .line 805
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 807
    :cond_5
    throw v0

    .line 786
    :pswitch_5
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/a/b;->a()I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 787
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 788
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_6
    const-string v0, "OP_MEDIA_ITEM_ADD_IMAGES"

    .line 754
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "images"

    .line 756
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photos.length = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 759
    :goto_3
    array-length v1, v0

    if-ge v3, v1, :cond_8

    .line 760
    sget-boolean v1, Lcn/nubia/camera/videomaker/service/MakerService;->h:Z

    if-eqz v1, :cond_6

    .line 761
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->c(Landroid/content/Intent;)V

    goto :goto_5

    .line 764
    :cond_6
    aget-object v1, v0, v3

    if-nez v1, :cond_7

    .line 768
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 770
    :cond_7
    sget-object v7, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v7, v1}, Lcn/nubia/camera/videomaker/a/b;->a(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 773
    :cond_8
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v5

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to add mediaItem!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    sget-boolean v0, Lcn/nubia/camera/videomaker/service/MakerService;->h:Z

    if-eqz v0, :cond_9

    .line 776
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/a/b;->a()I

    const-string v0, "removeAllMediaItems"

    .line 777
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 779
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 780
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 749
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_7

    .line 892
    :pswitch_8
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/service/MakerService;->g()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 894
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_7

    :pswitch_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 887
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v5, v0

    goto :goto_6

    :pswitch_a
    const-string v0, "OP_VIDEO_EDITOR_EXPORT_STATUS"

    .line 881
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 882
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_7

    :pswitch_b
    const-string v0, "OP_VIDEO_EDITOR_CANCEL_EXPORT"

    .line 874
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/a/b;->b(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 876
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_7

    :pswitch_c
    const-string v0, "OP_VIDEO_EDITOR_EXPORT"

    .line 867
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->d(Landroid/content/Intent;)V

    .line 869
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V

    goto :goto_7

    :pswitch_d
    const-string v0, "processIntent OP_VIDEO_EDITOR_CREATE"

    .line 737
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    if-eqz v0, :cond_a

    goto :goto_7

    .line 739
    :cond_a
    new-instance v0, Lcn/nubia/camera/videomaker/a/b;

    invoke-direct {v0}, Lcn/nubia/camera/videomaker/a/b;-><init>()V

    sput-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->f:Lcn/nubia/camera/videomaker/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 740
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 742
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    .line 903
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processIntent, ex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 905
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .locals 3

    const-string p3, "op"

    const/4 v0, -0x1

    .line 370
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "filename"

    const-string v1, "MakerService"

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    const-string p2, "default"

    .line 537
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_7

    .line 539
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_0
    const-string p2, "OP_AUDIO_TRACK_REMOVE_ALL"

    .line 450
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_7

    .line 452
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_1
    const-string p2, "OP_AUDIO_TRACK_REMOVE"

    .line 441
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_7

    .line 443
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_2
    const-string p2, "OP_AUDIO_TRACK_ADD_NO_URI"

    .line 428
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    .line 430
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 432
    :cond_0
    sget-object p2, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/videomaker/service/a;

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p3, v0, p4}, Lcn/nubia/camera/videomaker/service/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_3
    const-string p3, "OP_AUDIO_TRACK_ADD_URI"

    .line 415
    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_1

    .line 417
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 419
    :cond_1
    check-cast p2, Ljava/lang/String;

    .line 420
    sget-object p3, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/videomaker/service/a;

    .line 421
    invoke-virtual {v0, p2, p4}, Lcn/nubia/camera/videomaker/service/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :pswitch_4
    const-string p2, "OP_MEDIA_ITEM_REMOVE_ALL"

    .line 407
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_7

    .line 409
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_5
    const-string p2, "OP_MEDIA_ITEM_ADD_IMAGES"

    .line 395
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_2

    .line 397
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 399
    :cond_2
    sget-object p2, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/videomaker/service/a;

    .line 400
    invoke-virtual {p3}, Lcn/nubia/camera/videomaker/service/a;->a()V

    goto :goto_2

    :pswitch_6
    const-string p2, "OP_VIDEO_EDITOR_SET_ASPECT_RATIO"

    .line 385
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_7
    const-string p2, "OP_VIDEO_EDITOR_DELETE"

    .line 524
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_3

    .line 526
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 529
    :cond_3
    sget-object p2, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/videomaker/service/a;

    .line 530
    invoke-virtual {p3, p4}, Lcn/nubia/camera/videomaker/service/a;->b(Ljava/lang/Exception;)V

    goto :goto_3

    :pswitch_8
    const-string p2, "OP_VIDEO_EDITOR_RELEASE"

    .line 511
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_7

    .line 513
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_9
    const-string p2, "OP_VIDEO_EDITOR_EXPORT_STATUS"

    .line 480
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_4

    .line 484
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 487
    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ex"

    .line 489
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p4, "req_intent"

    .line 490
    invoke-virtual {p1, p4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/content/Intent;

    .line 491
    invoke-direct {p0, p4}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 492
    sget-object v0, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    invoke-virtual {v0, p4}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Intent;)V

    .line 495
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Ljava/lang/Exception;

    const/4 p4, 0x0

    const-string v0, "cancelled"

    .line 496
    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p4

    const-string v0, "uri"

    .line 498
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 502
    sget-object v1, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/videomaker/service/a;

    .line 503
    invoke-virtual {v2, p2, v0, p3, p4}, Lcn/nubia/camera/videomaker/service/a;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Exception;Z)V

    goto :goto_4

    :pswitch_a
    const-string p2, "OP_VIDEO_EDITOR_CANCEL_EXPORT"

    .line 467
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_5

    .line 469
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 472
    :cond_5
    sget-object p2, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/videomaker/service/a;

    .line 473
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcn/nubia/camera/videomaker/service/a;->a(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_b
    const-string p2, "OP_VIDEO_EDITOR_EXPORT"

    .line 459
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 373
    :pswitch_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OP_VIDEO_EDITOR_CREATE  finalize:  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_6

    .line 375
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Intent;)V

    .line 377
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " OP_VIDEO_EDITOR_CREATE  callback  mListeners: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/videomaker/service/MakerService;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/videomaker/service/a;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideogeneratorcreated callbaack  listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p3, p4}, Lcn/nubia/camera/videomaker/service/a;->a(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_7
    :goto_7
    if-eqz p5, :cond_8

    .line 546
    sget-object p2, Lcn/nubia/camera/videomaker/service/MakerService;->a:Lcn/nubia/camera/videomaker/service/b;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Intent;)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "MakerService"

    const-string v0, "onBind"

    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "MakerService"

    const-string v1, "onCreate"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->c:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcn/nubia/camera/videomaker/service/MakerService$a;

    const-string v1, "VideoServiceThread"

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/videomaker/service/MakerService$a;-><init>(Lcn/nubia/camera/videomaker/service/MakerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->b:Lcn/nubia/camera/videomaker/service/MakerService$a;

    .line 104
    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/service/MakerService$a;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MakerService"

    const-string v1, "onDestroy"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->b:Lcn/nubia/camera/videomaker/service/MakerService$a;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/service/MakerService$a;->a()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService;->b:Lcn/nubia/camera/videomaker/service/MakerService$a;

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p2, "op"

    const/4 p3, -0x1

    .line 130
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCommand op="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MakerService"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No thread assigned: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService;->b:Lcn/nubia/camera/videomaker/service/MakerService$a;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/videomaker/service/MakerService$a;->a(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
