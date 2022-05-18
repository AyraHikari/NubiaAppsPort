.class public Lcn/nubia/camera/elefnovideo/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/elefnovideo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:J

.field b:[B

.field c:I

.field d:I


# direct methods
.method public constructor <init>(J[BII)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-wide p1, p0, Lcn/nubia/camera/elefnovideo/a$c;->a:J

    .line 204
    iput-object p3, p0, Lcn/nubia/camera/elefnovideo/a$c;->b:[B

    .line 205
    iput p4, p0, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    .line 206
    iput p5, p0, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    return-void
.end method

.method private a()V
    .locals 8

    .line 211
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/src/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/camera/elefnovideo/a$c;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v1, Landroid/graphics/YuvImage;

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$c;->b:[B

    const/16 v4, 0x11

    iget v5, p0, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    iget v6, p0, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    iget v4, p0, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/a$c;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/a$c;->a()V

    return-void
.end method
