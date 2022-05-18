.class public abstract Lb/a/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Z

.field private i:Landroid/os/Handler;

.field protected j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/c/a/b;->a:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lb/a/c/a/b;->b:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lb/a/c/a/b;->c:I

    .line 6
    iput v0, p0, Lb/a/c/a/b;->d:I

    .line 7
    iput v0, p0, Lb/a/c/a/b;->e:I

    .line 8
    iput v0, p0, Lb/a/c/a/b;->f:I

    .line 9
    iput-boolean v1, p0, Lb/a/c/a/b;->g:Z

    .line 10
    iput-boolean v1, p0, Lb/a/c/a/b;->h:Z

    const/16 v0, 0x64

    .line 11
    iput v0, p0, Lb/a/c/a/b;->j:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lb/a/c/a/b;->f:I

    iget v1, p0, Lb/a/c/a/b;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/b;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/b;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/b;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/c/a/b;->g:Z

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/b;->j:I

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract j(II)V
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/c/a/b;->d:I

    return-void
.end method

.method public abstract l(I)V
.end method

.method protected m(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/b;->i:Landroid/os/Handler;

    return-void
.end method

.method protected n(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/b;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/c/a/b;->g:Z

    return-void
.end method

.method public q([I)V
    .locals 0

    return-void
.end method

.method public r(Z)V
    .locals 0

    return-void
.end method

.method public abstract s(I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaEntry{mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/c/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/c/a/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
