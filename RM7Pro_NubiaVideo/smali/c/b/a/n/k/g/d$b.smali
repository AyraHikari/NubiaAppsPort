.class Lc/b/a/n/k/g/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/k/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/b/a/n/k/g/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/b/a/n/k/g/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/g/d$b;->b(Ljava/io/InputStream;II)Lc/b/a/n/i/k;

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Ljava/io/InputStream;II)Lc/b/a/n/i/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lc/b/a/n/i/k<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/Error;

    const-string p2, "You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
