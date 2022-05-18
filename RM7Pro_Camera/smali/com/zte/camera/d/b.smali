.class public Lcom/zte/camera/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const-string v4, "this frame is h264 I frame"

    const/4 v5, 0x3

    if-nez v3, :cond_0

    .line 19
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x4

    .line 20
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v1, :cond_0

    .line 21
    sget-object p0, Lcom/zte/camera/d/b;->a:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 25
    :cond_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    if-ne p0, v1, :cond_1

    .line 26
    sget-object p0, Lcom/zte/camera/d/b;->a:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    return v0
.end method

.method public static b(Ljava/nio/ByteBuffer;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 37
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 39
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const-string v3, "this frame is h265 I frame"

    const/4 v4, 0x3

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x4

    .line 41
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x7e

    shr-int/2addr v2, p1

    invoke-static {v2}, Lcom/zte/camera/d/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sget-object p0, Lcom/zte/camera/d/b;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 46
    :cond_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, p1, :cond_1

    .line 47
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x7e

    shr-int/2addr p0, p1

    invoke-static {p0}, Lcom/zte/camera/d/b;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 48
    sget-object p0, Lcom/zte/camera/d/b;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    return v0
.end method
