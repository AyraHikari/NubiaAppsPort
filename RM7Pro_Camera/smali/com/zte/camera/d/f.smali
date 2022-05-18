.class public Lcom/zte/camera/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "f"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    :try_start_0
    const-string v0, "rw"

    .line 90
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "DCIM"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-object v0, Lcom/zte/camera/d/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relativePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "android.intent.action.VIEW"

    .line 61
    invoke-static {p1}, Lcom/zte/camera/d/f;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "video/mp4"

    goto :goto_0

    :cond_1
    const-string v1, "image/jpeg"

    .line 67
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "source"

    const/4 v0, 0x1

    .line 69
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "multi_mode_external"

    .line 70
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0x10000001

    .line 71
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 74
    sget-object p1, Lcom/zte/camera/d/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSmartronGallay exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 55
    :cond_2
    :goto_2
    sget-object p0, Lcom/zte/camera/d/f;->a:Ljava/lang/String;

    const-string p1, "ThumbnailView onClick (activity == null) || (uri == null)"

    invoke-static {p0, p1}, Lcom/zte/camera/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "//video//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)[F
    .locals 3

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 20
    array-length p1, p0

    .line 21
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 23
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
