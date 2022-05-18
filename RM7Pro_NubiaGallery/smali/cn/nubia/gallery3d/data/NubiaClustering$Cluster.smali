.class public Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;
.super Ljava/lang/Object;
.source "NubiaClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/NubiaClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cluster"
.end annotation


# instance fields
.field mCaption:Ljava/lang/String;

.field mContentLength:I

.field mDate:J

.field mIndex:I

.field mIndexSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mSize:I

.field mStartIndex:I

.field final synthetic this$0:Lcn/nubia/gallery3d/data/NubiaClustering;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/NubiaClustering;JI)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->this$0:Lcn/nubia/gallery3d/data/NubiaClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p2, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mDate:J

    .line 68
    iput p4, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mSize:I

    .line 69
    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/data/NubiaClustering;->access$000(Lcn/nubia/gallery3d/data/NubiaClustering;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mCaption:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCount(I)V
    .locals 1

    .line 85
    iget v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mSize:I

    return-void
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 93
    iget v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mContentLength:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mDate:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    .line 77
    iget v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mIndex:I

    return v0
.end method

.method public getIndexSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mIndexSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 101
    iget v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mPosition:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 117
    iget v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mStartIndex:I

    return v0
.end method

.method public setContentLength(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mContentLength:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mIndex:I

    return-void
.end method

.method public setIndexSet()V
    .locals 3

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mIndexSet:Ljava/util/HashSet;

    .line 123
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mStartIndex:I

    :goto_0
    iget v1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mStartIndex:I

    iget v2, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mSize:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mIndexSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIndexSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mIndexSet:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStartIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NubiaClustering"

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mPosition:I

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mStartIndex:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 81
    iget v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->mSize:I

    return v0
.end method
