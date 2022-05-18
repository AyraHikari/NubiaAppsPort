.class public abstract Lcom/GifEncoder/f;
.super Lcom/GifEncoder/b;
.source ""


# instance fields
.field protected f:Lcom/GifEncoder/e$b;

.field protected g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/GifEncoder/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/GifEncoder/f;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/GifEncoder/f;->h:I

    iput-object p1, p0, Lcom/GifEncoder/f;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/GifEncoder/f;->h:I

    return-void
.end method


# virtual methods
.method public a(Lcom/GifEncoder/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/f;->f:Lcom/GifEncoder/e$b;

    return-void
.end method
