.class public Lcn/nubia/gallery3d/data/DownloadEntry;
.super Lcn/nubia/gallery3d/common/Entry;
.source "DownloadEntry.java"


# annotations
.annotation runtime Lcn/nubia/gallery3d/common/Entry$Table;
    value = "download"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/DownloadEntry$Columns;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lcn/nubia/gallery3d/common/EntrySchema;


# instance fields
.field public contentSize:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "_size"
    .end annotation
.end field

.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "content_url"
    .end annotation
.end field

.field public eTag:Ljava/lang/String;
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "etag"
    .end annotation
.end field

.field public hashCode:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        indexed = true
        value = "hash_code"
    .end annotation
.end field

.field public lastAccessTime:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        indexed = true
        value = "last_access"
    .end annotation
.end field

.field public lastUpdatedTime:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "last_updated"
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "_data"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcn/nubia/gallery3d/common/EntrySchema;

    const-class v1, Lcn/nubia/gallery3d/data/DownloadEntry;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcn/nubia/gallery3d/data/DownloadEntry;->SCHEMA:Lcn/nubia/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash_code: "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/gallery3d/data/DownloadEntry;->hashCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "content_url"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/data/DownloadEntry;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_size"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/DownloadEntry;->contentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "etag"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/data/DownloadEntry;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "last_access"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/DownloadEntry;->lastAccessTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_updated"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/gallery3d/data/DownloadEntry;->lastUpdatedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
