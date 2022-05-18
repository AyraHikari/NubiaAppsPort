.class final Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/qualcomm/qti/snpe/TensorAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;

    invoke-direct {v3, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getTensorShapes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/TensorAttributes;

    invoke-interface {v3}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
