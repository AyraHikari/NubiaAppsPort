.class public final Landroidx/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/FileDescriptor;

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;III)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 184
    invoke-direct/range {v0 .. v5}, Landroidx/e/d$a;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V
    .locals 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/e/d$a;->f:Z

    const/16 v1, 0x64

    .line 153
    iput v1, p0, Landroidx/e/d$a;->g:I

    .line 154
    iput v0, p0, Landroidx/e/d$a;->h:I

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Landroidx/e/d$a;->i:I

    .line 156
    iput v0, p0, Landroidx/e/d$a;->j:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 192
    iput-object p1, p0, Landroidx/e/d$a;->a:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Landroidx/e/d$a;->b:Ljava/io/FileDescriptor;

    .line 194
    iput p3, p0, Landroidx/e/d$a;->c:I

    .line 195
    iput p4, p0, Landroidx/e/d$a;->d:I

    .line 196
    iput p5, p0, Landroidx/e/d$a;->e:I

    return-void

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid image size: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Landroidx/e/d$a;
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/e/d$a;->j:I

    return-object p0
.end method

.method public a()Landroidx/e/d;
    .locals 13

    .line 296
    new-instance v12, Landroidx/e/d;

    iget-object v1, p0, Landroidx/e/d$a;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/e/d$a;->b:Ljava/io/FileDescriptor;

    iget v3, p0, Landroidx/e/d$a;->c:I

    iget v4, p0, Landroidx/e/d$a;->d:I

    iget v5, p0, Landroidx/e/d$a;->j:I

    iget-boolean v6, p0, Landroidx/e/d$a;->f:Z

    iget v7, p0, Landroidx/e/d$a;->g:I

    iget v8, p0, Landroidx/e/d$a;->h:I

    iget v9, p0, Landroidx/e/d$a;->i:I

    iget v10, p0, Landroidx/e/d$a;->e:I

    iget-object v11, p0, Landroidx/e/d$a;->k:Landroid/os/Handler;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroidx/e/d;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;IIIZIIIILandroid/os/Handler;)V

    return-object v12
.end method

.method public b(I)Landroidx/e/d$a;
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 237
    iput p1, p0, Landroidx/e/d$a;->g:I

    return-object p0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Landroidx/e/d$a;
    .locals 3

    if-lez p1, :cond_0

    .line 256
    iput p1, p0, Landroidx/e/d$a;->h:I

    return-object p0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maxImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
