.class Lcom/a/a/b/e$1;
.super Lcom/a/a/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/e;->a(I)Lcom/a/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/e;


# direct methods
.method constructor <init>(Lcom/a/a/b/e;II)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/a/a/b/e$1;->a:Lcom/a/a/b/e;

    invoke-direct {p0, p2, p3}, Lcom/a/a/b/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/a/a/b/e$1;->a:Lcom/a/a/b/e;

    invoke-virtual {v0, p1}, Lcom/a/a/b/e;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
