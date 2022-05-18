.class Lcn/nubia/gallery3d/common/FileCache$FileEntry;
.super Lcn/nubia/gallery3d/common/Entry;
.source "FileCache.java"


# annotations
.annotation runtime Lcn/nubia/gallery3d/common/Entry$Table;
    value = "files"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/common/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/common/FileCache$FileEntry$Columns;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lcn/nubia/gallery3d/common/EntrySchema;


# instance fields
.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "content_url"
    .end annotation
.end field

.field public filename:Ljava/lang/String;
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "filename"
    .end annotation
.end field

.field public hashCode:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        indexed = true
        value = "hash_code"
    .end annotation
.end field

.field public lastAccess:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        indexed = true
        value = "last_access"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "size"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 250
    new-instance v0, Lcn/nubia/gallery3d/common/EntrySchema;

    const-class v1, Lcn/nubia/gallery3d/common/FileCache$FileEntry;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcn/nubia/gallery3d/common/FileCache$FileEntry;->SCHEMA:Lcn/nubia/gallery3d/common/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/Entry;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/common/FileCache$1;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/FileCache$FileEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash_code: "

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/gallery3d/common/FileCache$FileEntry;->hashCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "content_url"

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/common/FileCache$FileEntry;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "last_access"

    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/common/FileCache$FileEntry;->lastAccess:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filename"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
