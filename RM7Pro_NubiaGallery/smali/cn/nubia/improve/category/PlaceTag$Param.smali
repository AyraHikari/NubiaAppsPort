.class public Lcn/nubia/improve/category/PlaceTag$Param;
.super Ljava/lang/Object;
.source "PlaceTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/category/PlaceTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field private dateTaken:J

.field private filePath:Ljava/lang/String;

.field private id:I

.field private latitude:D

.field private longitude:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formCursor(Landroid/database/Cursor;Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/improve/category/PlaceTag$Param;
    .locals 9

    .line 36
    new-instance v0, Lcn/nubia/improve/category/PlaceTag$Param;

    invoke-direct {v0}, Lcn/nubia/improve/category/PlaceTag$Param;-><init>()V

    const/4 v1, 0x1

    .line 37
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1d

    if-lt v3, v7, :cond_0

    .line 41
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lcn/nubia/improve/category/CategoryDbHelper;->IMAGE_URI:Landroid/net/Uri;

    invoke-static {p1, v3, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->loadPrivacyData(Lcn/nubia/gallery3d/app/GalleryApp;ILandroid/net/Uri;)[F

    move-result-object p1

    .line 42
    aget v3, p1, v6

    float-to-double v4, v3

    .line 43
    aget p1, p1, v1

    float-to-double v7, p1

    goto :goto_0

    :cond_0
    move-wide v7, v4

    .line 46
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "PlaceTag"

    const-string p1, "filepath is null."

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v0, Lcn/nubia/improve/category/PlaceTag$Param;->id:I

    .line 51
    iput-object v2, v0, Lcn/nubia/improve/category/PlaceTag$Param;->filePath:Ljava/lang/String;

    .line 52
    iput-wide v4, v0, Lcn/nubia/improve/category/PlaceTag$Param;->latitude:D

    .line 53
    iput-wide v7, v0, Lcn/nubia/improve/category/PlaceTag$Param;->longitude:D

    const/4 p1, 0x2

    .line 54
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    iput-wide p0, v0, Lcn/nubia/improve/category/PlaceTag$Param;->dateTaken:J

    return-object v0
.end method


# virtual methods
.method public getDateTaken()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcn/nubia/improve/category/PlaceTag$Param;->dateTaken:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/improve/category/PlaceTag$Param;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 59
    iget v0, p0, Lcn/nubia/improve/category/PlaceTag$Param;->id:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcn/nubia/improve/category/PlaceTag$Param;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcn/nubia/improve/category/PlaceTag$Param;->longitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Param [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/improve/category/PlaceTag$Param;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/PlaceTag$Param;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/improve/category/PlaceTag$Param;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/improve/category/PlaceTag$Param;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/improve/category/PlaceTag$Param;->dateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
