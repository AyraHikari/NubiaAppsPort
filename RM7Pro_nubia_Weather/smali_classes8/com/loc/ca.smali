.class public final Lcom/loc/ca;
.super Ljava/lang/Object;
.source "CollectionData.java"


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/loc/ca;->a:I

    iput-object p2, p0, Lcom/loc/ca;->b:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/ca;->a:I

    return v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/loc/ca;->b:[B

    return-object v0
.end method
