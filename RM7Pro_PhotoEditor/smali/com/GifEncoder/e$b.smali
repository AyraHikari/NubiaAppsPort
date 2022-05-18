.class public Lcom/GifEncoder/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/GifEncoder/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/GifEncoder/e$b;->a:I

    iput v0, p0, Lcom/GifEncoder/e$b;->b:I

    iput p1, p0, Lcom/GifEncoder/e$b;->a:I

    iput p2, p0, Lcom/GifEncoder/e$b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/GifEncoder/e$b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/GifEncoder/e$b;->a:I

    return v0
.end method
