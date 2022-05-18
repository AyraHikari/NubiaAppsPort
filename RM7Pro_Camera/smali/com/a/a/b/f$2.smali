.class final Lcom/a/a/b/f$2;
.super Lcom/a/a/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/f;->a([Ljava/lang/Object;III)Lcom/a/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .locals 0

    .line 1011
    iput-object p3, p0, Lcom/a/a/b/f$2;->a:[Ljava/lang/Object;

    iput p4, p0, Lcom/a/a/b/f$2;->b:I

    invoke-direct {p0, p1, p2}, Lcom/a/a/b/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/a/a/b/f$2;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/a/a/b/f$2;->b:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
