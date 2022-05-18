.class public Lcom/hpplay/sdk/source/browse/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/browse/b/a;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    const/4 v0, -0x1

    sget-object v1, Lcom/hpplay/sdk/source/browse/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 25
    sget-object v0, Lcom/hpplay/sdk/source/browse/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/hpplay/sdk/source/browse/b/a;->a:Landroid/util/SparseArray;

    const v1, 0x10001

    const-string v2, "OPTION_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/browse/b/a;->a:Landroid/util/SparseArray;

    const v1, 0x10002

    const-string v2, "OPTION_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/hpplay/sdk/source/browse/b/a;->a:Landroid/util/SparseArray;

    const v1, 0x10003

    const-string v2, "OPTION_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/hpplay/sdk/source/browse/b/a;->a:Landroid/util/SparseArray;

    const v1, 0x10004

    const-string v2, "OPTION_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    return-void
.end method
