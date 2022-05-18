.class public final enum Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum b:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum d:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum e:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field private static final synthetic g:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;


# instance fields
.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->a:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->b:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "PNG_A"

    invoke-direct {v0, v1, v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 34
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v5, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->d:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 36
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->e:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->a:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->b:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->d:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->e:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->g:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-boolean p3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->f:Z

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->g:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->f:Z

    return v0
.end method
