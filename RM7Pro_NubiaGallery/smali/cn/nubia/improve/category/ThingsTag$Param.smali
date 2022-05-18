.class public Lcn/nubia/improve/category/ThingsTag$Param;
.super Ljava/lang/Object;
.source "ThingsTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/category/ThingsTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field private dateTaken:J

.field private filePath:Ljava/lang/String;

.field private id:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formCursor(Landroid/database/Cursor;)Lcn/nubia/improve/category/ThingsTag$Param;
    .locals 3

    .line 27
    new-instance v0, Lcn/nubia/improve/category/ThingsTag$Param;

    invoke-direct {v0}, Lcn/nubia/improve/category/ThingsTag$Param;-><init>()V

    const/4 v1, 0x1

    .line 28
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcn/nubia/improve/category/ThingsTag$Param;->id:I

    .line 30
    iput-object v1, v0, Lcn/nubia/improve/category/ThingsTag$Param;->filePath:Ljava/lang/String;

    const/4 v1, 0x2

    .line 31
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/nubia/improve/category/ThingsTag$Param;->dateTaken:J

    return-object v0
.end method


# virtual methods
.method public getDateTaken()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcn/nubia/improve/category/ThingsTag$Param;->dateTaken:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/nubia/improve/category/ThingsTag$Param;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 36
    iget v0, p0, Lcn/nubia/improve/category/ThingsTag$Param;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Param [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/improve/category/ThingsTag$Param;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/ThingsTag$Param;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/improve/category/ThingsTag$Param;->dateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
