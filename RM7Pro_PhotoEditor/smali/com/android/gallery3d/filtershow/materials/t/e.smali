.class public Lcom/android/gallery3d/filtershow/materials/t/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/t/b;


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/materials/c;

.field private b:Lcom/android/gallery3d/filtershow/materials/d;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/c;Lcom/android/gallery3d/filtershow/materials/d;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->a:Lcom/android/gallery3d/filtershow/materials/c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->b:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->a:Lcom/android/gallery3d/filtershow/materials/c;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->b:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->a:Lcom/android/gallery3d/filtershow/materials/c;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/c;->t(J)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->a:Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/materials/c;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->b:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/t/e;->a:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/materials/d;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
