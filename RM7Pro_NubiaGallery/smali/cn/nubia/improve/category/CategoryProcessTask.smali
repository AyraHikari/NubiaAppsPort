.class public Lcn/nubia/improve/category/CategoryProcessTask;
.super Ljava/lang/Object;
.source "CategoryProcessTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;,
        Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;
    }
.end annotation


# static fields
.field private static final ANDROID_N_MR1:I = 0x19

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CategoryProcessTask"


# instance fields
.field private final MSG_PROCESS_BEGIN:I

.field private final MSG_PROCESS_ERROR:I

.field private final MSG_PROCESS_FINISH:I

.field private final MSG_PROCESS_INTERRUPT:I

.field private final MSG_PROCESS_NEXT:I

.field private final NUMBER_OF_LABEL:I

.field private final THINGS_HEIGHT:I

.field private final THINGS_WIDTH:I

.field private mCategoryAlgorithmHelper:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

.field private mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

.field private mCategoryInterfaceImpl:Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mHandler:Landroid/os/Handler;

.field private mProcessHandler:Landroid/os/Handler;

.field private mResolver:Landroid/content/ContentResolver;

.field private powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/os/Handler;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->sModelDataProcesser:Lcn/nubia/improve/category/algorithm/IModel;

    invoke-interface {v0}, Lcn/nubia/improve/category/algorithm/IModel;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->THINGS_WIDTH:I

    .line 41
    sget-object v0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->sModelDataProcesser:Lcn/nubia/improve/category/algorithm/IModel;

    invoke-interface {v0}, Lcn/nubia/improve/category/algorithm/IModel;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->THINGS_HEIGHT:I

    const/4 v0, 0x5

    .line 42
    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->NUMBER_OF_LABEL:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->MSG_PROCESS_BEGIN:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->MSG_PROCESS_NEXT:I

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->MSG_PROCESS_FINISH:I

    const/4 v0, 0x3

    .line 46
    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->MSG_PROCESS_ERROR:I

    const/4 v0, 0x4

    .line 47
    iput v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->MSG_PROCESS_INTERRUPT:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCursor:Landroid/database/Cursor;

    .line 57
    iput-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->powerManager:Landroid/os/PowerManager;

    const-string v0, "CategoryProcessTask"

    const-string v1, "txh new CategoryProcessTask"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 63
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mResolver:Landroid/content/ContentResolver;

    .line 66
    new-instance p2, Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-direct {p2, p1}, Lcn/nubia/improve/category/CategoryDbHelper;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p2, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    .line 67
    new-instance p1, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;

    invoke-direct {p1, p0}, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;-><init>(Lcn/nubia/improve/category/CategoryProcessTask;)V

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryInterfaceImpl:Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;

    .line 68
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->powerManager:Landroid/os/PowerManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/category/CategoryProcessTask;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/improve/category/CategoryProcessTask;->processInit()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/improve/category/CategoryProcessTask;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/improve/category/CategoryProcessTask;->processNext()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/improve/category/CategoryProcessTask;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/improve/category/CategoryProcessTask;->processEnd()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/category/CategoryProcessTask;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/improve/category/CategoryProcessTask;->releaseDbData()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/improve/category/CategoryProcessTask;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/category/CategoryProcessTask;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->THINGS_WIDTH:I

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/improve/category/CategoryProcessTask;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->THINGS_HEIGHT:I

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/improve/category/CategoryProcessTask;)Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryAlgorithmHelper:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    return-object p0
.end method

.method private processEnd()V
    .locals 2

    const-string v0, "CategoryProcessTask"

    const-string v1, "txh processEnd"

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcn/nubia/improve/category/CategoryProcessTask;->updateFaceCover()V

    .line 193
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryAlgorithmHelper:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->release()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryAlgorithmHelper:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    :cond_1
    return-void
.end method

.method private processFaceTag(Landroid/database/Cursor;)V
    .locals 2

    .line 347
    invoke-static {p1}, Lcn/nubia/improve/category/FaceTag$Param;->formCursor(Landroid/database/Cursor;)Lcn/nubia/improve/category/FaceTag$Param;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {p1}, Lcn/nubia/improve/category/FaceTag$Param;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/improve/category/CategoryDbHelper;->checkFaceTagById(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryInterfaceImpl:Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->getFaceTag(Lcn/nubia/improve/category/FaceTag$Param;)Lcn/nubia/improve/category/FaceTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/CategoryDbHelper;->insertFaceValue(Lcn/nubia/improve/category/FaceTag;)V

    :cond_0
    return-void
.end method

.method private processImageByCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x1

    .line 314
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const/4 v0, 0x3

    .line 316
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "image/jpeg"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0, p1}, Lcn/nubia/improve/category/CategoryProcessTask;->processPlaceTag(Landroid/database/Cursor;)V

    .line 319
    invoke-direct {p0, p1}, Lcn/nubia/improve/category/CategoryProcessTask;->processThingsTag(Landroid/database/Cursor;)V

    .line 320
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportFaceClassify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0, p1}, Lcn/nubia/improve/category/CategoryProcessTask;->processFaceTag(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method private processInit()V
    .locals 8

    const-string v0, "CategoryProcessTask"

    const-string v1, "txh processInit"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsLabels()[Ljava/lang/String;

    .line 154
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsGroupLabels()[Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {v1}, Lcn/nubia/improve/category/CategoryDbHelper;->syncDatabase()V

    .line 156
    iget-object v1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryAlgorithmHelper:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    .line 157
    iget-object v2, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcn/nubia/improve/category/CategoryDbHelper;->IMAGE_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/improve/category/CategoryDbHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txh cursor.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot get cursor for image"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processNext()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 173
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/improve/category/CategoryProcessTask;->processImageByCursor(Landroid/database/Cursor;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private processPlaceTag(Landroid/database/Cursor;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {p1, v0}, Lcn/nubia/improve/category/PlaceTag$Param;->formCursor(Landroid/database/Cursor;Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag$Param;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/improve/category/CategoryDbHelper;->checkPlaceTagById(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryInterfaceImpl:Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->getImagePlace(Lcn/nubia/improve/category/PlaceTag$Param;)Lcn/nubia/improve/category/PlaceTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/CategoryDbHelper;->insertPlaceValue(Lcn/nubia/improve/category/PlaceTag;)V

    :cond_0
    return-void
.end method

.method private processThingsTag(Landroid/database/Cursor;)V
    .locals 2

    .line 337
    invoke-static {p1}, Lcn/nubia/improve/category/ThingsTag$Param;->formCursor(Landroid/database/Cursor;)Lcn/nubia/improve/category/ThingsTag$Param;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 338
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag$Param;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/improve/category/CategoryDbHelper;->checkThingsTagById(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryInterfaceImpl:Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->getThingsTag(Lcn/nubia/improve/category/ThingsTag$Param;)Lcn/nubia/improve/category/ThingsTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/CategoryDbHelper;->insertThingsValue(Lcn/nubia/improve/category/ThingsTag;)V

    :cond_0
    return-void
.end method

.method private releaseDbData()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcn/nubia/improve/category/CategoryDbHelper;->notifyMediaSetToUpdateData()V

    .line 147
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {v0}, Lcn/nubia/improve/category/CategoryDbHelper;->release()V

    :cond_0
    return-void
.end method

.method private updateFaceCover()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mCategoryDbHelper:Lcn/nubia/improve/category/CategoryDbHelper;

    invoke-virtual {v0}, Lcn/nubia/improve/category/CategoryDbHelper;->updateFaceCover()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CategoryProcessTask"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txh ====== run ======, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    .line 77
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    const-class v2, Lcn/nubia/improve/category/CategoryProcessTask;

    monitor-enter v2

    .line 80
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 82
    new-instance v3, Lcn/nubia/improve/category/CategoryProcessTask$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcn/nubia/improve/category/CategoryProcessTask$1;-><init>(Lcn/nubia/improve/category/CategoryProcessTask;Landroid/os/Looper;)V

    iput-object v3, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 118
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 123
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 124
    iput-object v2, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-float v0, v2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const-string v1, "CategoryProcessTask"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txh total costTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 123
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public terminate(Z)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "txh terminate, interrupted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CategoryProcessTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 134
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask;->mProcessHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 141
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/improve/category/CategoryProcessTask;->releaseDbData()V

    return-void
.end method
