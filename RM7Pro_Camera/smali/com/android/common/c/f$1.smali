.class Lcom/android/common/c/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/c/f;->a(Lcom/android/common/c/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/common/c/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/c/f;


# direct methods
.method constructor <init>(Lcom/android/common/c/f;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/common/c/f$1;->a:Lcom/android/common/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/common/c/f$a;Lcom/android/common/c/f$a;)I
    .locals 2

    .line 312
    invoke-interface {p1}, Lcom/android/common/c/f$a;->c()I

    move-result v0

    invoke-interface {p2}, Lcom/android/common/c/f$a;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 314
    :cond_0
    invoke-interface {p1}, Lcom/android/common/c/f$a;->c()I

    move-result p1

    invoke-interface {p2}, Lcom/android/common/c/f$a;->c()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 308
    check-cast p1, Lcom/android/common/c/f$a;

    check-cast p2, Lcom/android/common/c/f$a;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/c/f$1;->a(Lcom/android/common/c/f$a;Lcom/android/common/c/f$a;)I

    move-result p1

    return p1
.end method
