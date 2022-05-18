.class Lcn/nubia/camera/ao/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ao/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/camera/k/e;

.field b:Lcn/nubia/b/d;

.field c:Landroid/content/Context;

.field final synthetic d:Lcn/nubia/camera/ao/c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ao/c;Lcn/nubia/camera/k/e;Lcn/nubia/b/d;Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/ao/c$a;->d:Lcn/nubia/camera/ao/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput-object p2, p0, Lcn/nubia/camera/ao/c$a;->a:Lcn/nubia/camera/k/e;

    .line 47
    iput-object p3, p0, Lcn/nubia/camera/ao/c$a;->b:Lcn/nubia/b/d;

    .line 48
    iput-object p4, p0, Lcn/nubia/camera/ao/c$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/c$a;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CustomEffectPictureCallback"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/ao/c$a;->a:Lcn/nubia/camera/k/e;

    invoke-virtual {v0}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v0

    .line 56
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 57
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 58
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lcn/nubia/camera/ao/c$a;->d:Lcn/nubia/camera/ao/c;

    invoke-static {v4}, Lcn/nubia/camera/ao/c;->a(Lcn/nubia/camera/ao/c;)Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v4

    const-string v5, "pref_normal_effect_key"

    invoke-virtual {v4, v5}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EffectName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/nubia/algorithm/camera/EffectAlgorithm;->BitmapEffect(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 64
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v4

    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v5

    iget-object v6, p0, Lcn/nubia/camera/ao/c$a;->d:Lcn/nubia/camera/ao/c;

    invoke-static {v6}, Lcn/nubia/camera/ao/c;->a(Lcn/nubia/camera/ao/c;)Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/camera/ao/c$a;->c:Landroid/content/Context;

    invoke-static {v6, v7}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v5, v6, v3}, Lcn/nubia/m/c;->a(IILandroid/graphics/Bitmap;)V

    .line 66
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 69
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 72
    :try_start_0
    new-instance v5, Lcn/nubia/d/a;

    invoke-direct {v5}, Lcn/nubia/d/a;-><init>()V

    .line 73
    invoke-virtual {v5, v0}, Lcn/nubia/d/a;->a([B)V

    .line 74
    invoke-virtual {v5}, Lcn/nubia/d/a;->a()V

    .line 75
    invoke-virtual {v5, v3, v4}, Lcn/nubia/d/a;->a([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    :goto_0
    new-instance v0, Lcn/nubia/camera/k/e;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v3, p0, Lcn/nubia/camera/ao/c$a;->a:Lcn/nubia/camera/k/e;

    invoke-virtual {v3}, Lcn/nubia/camera/k/e;->b()I

    move-result v7

    iget-object v3, p0, Lcn/nubia/camera/ao/c$a;->a:Lcn/nubia/camera/k/e;

    invoke-virtual {v3}, Lcn/nubia/camera/k/e;->c()I

    move-result v8

    iget-object v3, p0, Lcn/nubia/camera/ao/c$a;->a:Lcn/nubia/camera/k/e;

    invoke-virtual {v3}, Lcn/nubia/camera/k/e;->d()J

    move-result-wide v9

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcn/nubia/camera/k/e;-><init>([BIIJ)V

    .line 81
    iget-object v3, p0, Lcn/nubia/camera/ao/c$a;->d:Lcn/nubia/camera/ao/c;

    invoke-static {v3}, Lcn/nubia/camera/ao/c;->b(Lcn/nubia/camera/ao/c;)Lcn/nubia/camera/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/ao/c$a;->b:Lcn/nubia/b/d;

    invoke-interface {v3, v0, v4}, Lcn/nubia/camera/k/o;->a(Ljava/lang/Object;Lcn/nubia/b/d;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/c$a;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
