.class public Lcn/nubia/camera/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FreezeVideo"

    const/4 v1, 0x3

    .line 22
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/camera/r/a;->a:Z

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcn/nubia/camera/r/a;->b:Ljava/lang/String;

    .line 40
    sput-object v0, Lcn/nubia/camera/r/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/media/MediaExtractor;Ljava/lang/String;)I
    .locals 4

    .line 27
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 31
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static a(Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/r/a;->b:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_matrix.txt"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/r/a;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    sget-boolean v0, Lcn/nubia/camera/r/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/Context;Z)Z
    .locals 2

    const v0, 0x7f0f022e

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f030b

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_freeze_video_registration_key"

    .line 74
    invoke-virtual {p0, v1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "auto"

    .line 78
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    xor-int/lit8 p0, p2, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-boolean v0, Lcn/nubia/camera/r/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    sget-object v0, Lcn/nubia/camera/r/a;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcn/nubia/camera/r/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 52
    sget-boolean v0, Lcn/nubia/camera/r/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    sget-object v0, Lcn/nubia/camera/r/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcn/nubia/camera/r/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
