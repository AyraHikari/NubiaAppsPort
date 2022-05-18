.class public final Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
.super Lcom/google/zxing/qrcode/detector/Detector;
.source "MultiDetector.java"


# static fields
.field private static final EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/common/DetectorResult;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 45
    return-void
.end method


# virtual methods
.method public detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 49
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 51
    .local v4, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    new-instance v5, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;

    invoke-direct {v5, v0, v4}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 52
    invoke-virtual {v5, p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v2

    .line 54
    .local v2, "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    array-length v5, v2

    if-nez v5, :cond_1

    .line 55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 49
    .end local v2    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v4    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_0
    sget-object v5, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 50
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/ResultPointCallback;

    move-object v4, v5

    goto :goto_0

    .line 58
    .restart local v2    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .restart local v4    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/common/DetectorResult;>;"
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    .line 61
    .local v1, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    sget-object v5, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    .line 69
    :goto_3
    return-object v5

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/zxing/common/DetectorResult;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/zxing/common/DetectorResult;

    goto :goto_3

    .restart local v1    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :catch_0
    move-exception v7

    goto :goto_2
.end method
