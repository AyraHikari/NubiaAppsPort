.class public Lcom/android/common/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/c/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field private c:[Ljava/nio/ByteBuffer;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/android/common/c/c$a;

.field private f:[Landroid/graphics/Rect;

.field private g:Lcom/android/common/c/f;


# direct methods
.method constructor <init>(Lcom/android/common/c/f;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/common/c/c;->b:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/c;->d:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Lcom/android/common/c/c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/common/c/c$a;-><init>(Lcom/android/common/c/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/common/c/c;->e:Lcom/android/common/c/c$a;

    .line 30
    iput-object p1, p0, Lcom/android/common/c/c;->g:Lcom/android/common/c/f;

    return-void
.end method

.method static synthetic a(Lcom/android/common/c/c;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/android/common/c/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/common/c/c;->d:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/c/c;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/common/c/c;->c:[Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic b(Lcom/android/common/c/c;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/c;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/android/common/c/c;)[Ljava/nio/ByteBuffer;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/c;->c:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic d(Lcom/android/common/c/c;)Lcom/android/common/c/f;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/c;->g:Lcom/android/common/c/f;

    return-object p0
.end method

.method static synthetic e(Lcom/android/common/c/c;)[Landroid/graphics/Rect;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 12

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/android/common/c/c;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/common/c/c;->c:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/android/common/c/c;->c:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 53
    iget-object v2, p0, Lcom/android/common/c/c;->c:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    iget-object v2, p0, Lcom/android/common/c/c;->g:Lcom/android/common/c/f;

    invoke-virtual {v2}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int v5, v3, v4

    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v6, v3, v2

    const-string v2, "PreviewDataForRects"

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smile mRects[i] left,top "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v2, p0, Lcom/android/common/c/c;->f:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    iget-object v2, p0, Lcom/android/common/c/c;->c:[Ljava/nio/ByteBuffer;

    aget-object v11, v2, v1

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 62
    iget-object v2, p0, Lcom/android/common/c/c;->c:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 64
    :cond_0
    iput-boolean v0, p0, Lcom/android/common/c/c;->b:Z

    .line 65
    iget-object v1, p0, Lcom/android/common/c/c;->e:Lcom/android/common/c/c$a;

    invoke-virtual {v1, v0}, Lcom/android/common/c/c$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 68
    invoke-static {}, Lcom/android/common/b/j;->a()V

    .line 69
    throw v0
.end method
