.class Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;
.super Ljava/lang/Object;
.source "FragmentedMp4Builder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->sortTracksInSequence(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/googlecode/mp4parser/authoring/Track;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field final synthetic val$cycle:I

.field final synthetic val$intersectionMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;Ljava/util/Map;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$intersectionMap:Ljava/util/Map;

    iput p3, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Track;)I
    .locals 10

    .line 89
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$intersectionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 90
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    aget-wide v2, v0, v1

    add-int/lit8 v4, v1, 0x1

    .line 92
    array-length v5, v0

    if-ge v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$intersectionMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 94
    iget v5, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    aget-wide v6, v4, v5

    add-int/lit8 v8, v5, 0x1

    .line 96
    array-length v9, v4

    if-ge v8, v9, :cond_1

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 97
    :goto_1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 98
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object p2

    invoke-static {v6, v7}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 104
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    add-int/2addr v0, p2

    goto :goto_3

    :cond_3
    sub-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Lcom/googlecode/mp4parser/authoring/Track;

    check-cast p2, Lcom/googlecode/mp4parser/authoring/Track;

    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->compare(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Track;)I

    move-result p1

    return p1
.end method
