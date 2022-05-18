.class public Lcom/android/gallery3d/filtershow/words/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x24bbca

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->b:I

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIFLjava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p2, -0x24bbca

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/c;->a:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/c;->b:I

    const/high16 p3, 0x437f0000    # 255.0f

    iput p3, p0, Lcom/android/gallery3d/filtershow/words/c;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    iput p1, p0, Lcom/android/gallery3d/filtershow/words/c;->a:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/c;->b:I

    iput p3, p0, Lcom/android/gallery3d/filtershow/words/c;->c:F

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    iput-boolean p6, p0, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/words/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x24bbca

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->b:I

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    iget v0, p1, Lcom/android/gallery3d/filtershow/words/c;->a:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->a:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/words/c;->b:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->b:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/words/c;->c:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/c;->c:F

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/words/c;->c:F

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/words/c;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/words/c;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    return v0
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/words/c;->c:F

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/words/c;->a:I

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/words/c;->b:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/c;->f:Ljava/lang/String;

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/words/c;->d:Z

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/words/c;->e:Z

    return-void
.end method
