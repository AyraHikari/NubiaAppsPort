.class Lu/aly/bb$c;
.super Lu/aly/cz;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cz",
        "<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lu/aly/cz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lu/aly/bb$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/co;Lu/aly/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 420
    check-cast p1, Lu/aly/cu;

    .line 421
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cu;->a(Ljava/lang/String;)V

    .line 422
    iget-wide v0, p2, Lu/aly/bb;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cu;->a(J)V

    .line 423
    iget v0, p2, Lu/aly/bb;->c:I

    invoke-virtual {p1, v0}, Lu/aly/cu;->a(I)V

    .line 424
    return-void
.end method

.method public bridge synthetic a(Lu/aly/co;Lu/aly/bp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 415
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->a(Lu/aly/co;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/co;Lu/aly/bb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 429
    check-cast p1, Lu/aly/cu;

    .line 430
    invoke-virtual {p1}, Lu/aly/cu;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    .line 431
    invoke-virtual {p2, v2}, Lu/aly/bb;->a(Z)V

    .line 432
    invoke-virtual {p1}, Lu/aly/cu;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bb;->b:J

    .line 433
    invoke-virtual {p2, v2}, Lu/aly/bb;->b(Z)V

    .line 434
    invoke-virtual {p1}, Lu/aly/cu;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bb;->c:I

    .line 435
    invoke-virtual {p2, v2}, Lu/aly/bb;->c(Z)V

    .line 436
    return-void
.end method

.method public bridge synthetic b(Lu/aly/co;Lu/aly/bp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 415
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->b(Lu/aly/co;Lu/aly/bb;)V

    return-void
.end method
