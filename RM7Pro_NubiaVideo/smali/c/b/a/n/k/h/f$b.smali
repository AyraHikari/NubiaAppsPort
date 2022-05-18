.class Lc/b/a/n/k/h/f$b;
.super Lc/b/a/r/h/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/k/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/r/h/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/os/Handler;

.field private final e:I

.field private final f:J

.field private g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/r/h/g;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/k/h/f$b;->d:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lc/b/a/n/k/h/f$b;->e:I

    .line 4
    iput-wide p3, p0, Lc/b/a/n/k/h/f$b;->f:J

    return-void
.end method

.method static synthetic n(Lc/b/a/n/k/h/f$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/b/a/n/k/h/f$b;->e:I

    return p0
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lc/b/a/r/g/c;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lc/b/a/n/k/h/f$b;->p(Landroid/graphics/Bitmap;Lc/b/a/r/g/c;)V

    return-void
.end method

.method public o()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/f$b;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public p(Landroid/graphics/Bitmap;Lc/b/a/r/g/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc/b/a/r/g/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/n/k/h/f$b;->g:Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Lc/b/a/n/k/h/f$b;->d:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc/b/a/n/k/h/f$b;->d:Landroid/os/Handler;

    iget-wide v0, p0, Lc/b/a/n/k/h/f$b;->f:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
