.class public Lcn/nubia/weather/ui/view/CustomWeatherLineView;
.super Landroid/view/View;
.source "CustomWeatherLineView.java"


# static fields
.field private static final DEFAILT_MIN_WIDTH:I = 0x3c


# instance fields
.field private effect:Landroid/graphics/PathEffect;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mChartHeight:I

.field private mContext:Landroid/content/Context;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mHighestTemperData:I

.field private mLastTemperData:Ljava/lang/Integer;

.field private mLineDashPaint:Landroid/graphics/Paint;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLowestTemperData:I

.field private mMinViewHeight:I

.field private mMinViewWidth:I

.field private mNoDataBitmap:Landroid/graphics/Bitmap;

.field private mNoDataSignHeight:I

.field private mPointPaint:Landroid/graphics/Paint;

.field private mSunRiseOrSetFlag:I

.field private mTemperData:[Ljava/lang/Double;

.field private mTemperTextSize:I

.field private mTemperature_offset:I

.field private mTextDotDistance:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mWeaDotColor:I

.field private mWeaDotRadius:I

.field private mWeaLineColor:I

.field private mWeaLineWidth:I

.field private mWeaTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mMinViewWidth:I

    .line 47
    iput v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mMinViewHeight:I

    .line 51
    const/16 v0, 0xe

    iput v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperTextSize:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineWidth:I

    .line 68
    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaDotRadius:I

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextDotDistance:I

    .line 95
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->effect:Landroid/graphics/PathEffect;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mSunRiseOrSetFlag:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mContext:Landroid/content/Context;

    .line 145
    iput-object p1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mContext:Landroid/content/Context;

    .line 146
    const-string v0, "customweatherline init"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 148
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->initPaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    .line 95
    nop

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private calcHeight(Ljava/lang/Double;Z)D
    .locals 8
    .param p1, "tem"    # Ljava/lang/Double;
    .param p2, "isNodata"    # Z

    .prologue
    .line 386
    if-eqz p2, :cond_0

    .line 387
    const-wide/16 v4, 0x0

    .line 401
    :goto_0
    return-wide v4

    .line 390
    :cond_0
    iget v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mHighestTemperData:I

    iget v4, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLowestTemperData:I

    sub-int v2, v3, v4

    .line 392
    .local v2, "temDistance":I
    if-nez p1, :cond_2

    iget-object v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLastTemperData:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 393
    iget-object v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLastTemperData:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 397
    :cond_1
    if-nez v2, :cond_3

    .line 398
    iget v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mChartHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v4, v3

    goto :goto_0

    .line 394
    :cond_2
    if-nez p1, :cond_1

    iget-object v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLastTemperData:Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 395
    iget v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mChartHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v4, v3

    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLowestTemperData:I

    int-to-double v6, v3

    sub-double v0, v4, v6

    .line 401
    .local v0, "currTemDistance":D
    iget v3, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mChartHeight:I

    int-to-double v4, v3

    mul-double/2addr v4, v0

    int-to-double v6, v2

    div-double/2addr v4, v6

    goto :goto_0
.end method

.method private getSize(III)I
    .locals 3
    .param p1, "mode"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I

    .prologue
    .line 286
    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_1

    .line 287
    move v0, p2

    .line 302
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 289
    .end local v0    # "result":I
    :cond_1
    if-nez p3, :cond_2

    .line 291
    iget v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mMinViewWidth:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 298
    .restart local v0    # "result":I
    :goto_1
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 299
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 295
    .end local v0    # "result":I
    :cond_2
    iget v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mMinViewHeight:I

    .line 296
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    .restart local v0    # "result":I
    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 163
    sget-object v1, Lcn/nubia/weather/R$styleable;->CustomWeatherLineView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperTextSize:I

    .line 167
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaTextColor:I

    .line 168
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineColor:I

    .line 169
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaDotColor:I

    .line 170
    const/4 v1, 0x2

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineWidth:I

    int-to-float v2, v2

    .line 172
    invoke-static {p1, v2}, Lcn/nubia/weather/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineWidth:I

    .line 173
    const/4 v1, 0x3

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaDotRadius:I

    int-to-float v2, v2

    .line 175
    invoke-static {p1, v2}, Lcn/nubia/weather/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaDotRadius:I

    .line 176
    const/4 v1, 0x4

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextDotDistance:I

    int-to-float v2, v2

    .line 178
    invoke-static {p1, v2}, Lcn/nubia/weather/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextDotDistance:I

    .line 179
    const/4 v1, 0x5

    const/high16 v2, 0x42700000    # 60.0f

    .line 181
    invoke-static {p1, v2}, Lcn/nubia/weather/utils/CommonUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mMinViewWidth:I

    .line 182
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mMinViewHeight:I

    .line 184
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mChartHeight:I

    .line 186
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperature_offset:I

    .line 190
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mNoDataSignHeight:I

    .line 194
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-void
.end method

.method private initPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 204
    .local v0, "timeTimeSize":F
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mBitmap:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020115

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mNoDataBitmap:Landroid/graphics/Bitmap;

    .line 206
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    .line 207
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 208
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 211
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mDotPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mDotPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaDotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLinePaint:Landroid/graphics/Paint;

    .line 216
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 218
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    .line 221
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->effect:Landroid/graphics/PathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 227
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mPointPaint:Landroid/graphics/Paint;

    .line 228
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaDotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget-object v1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 307
    const-string v2, "customweatherline onDraw"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 309
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 381
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 383
    :goto_0
    return-void

    .line 316
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 317
    .local v11, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 318
    .local v10, "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mNoDataBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 321
    .local v19, "noDataImgWidth":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getHeight()I

    move-result v2

    sub-int v8, v2, v10

    .line 322
    .local v8, "baseHeight":I
    const/16 v18, 0x0

    .line 323
    .local v18, "noDataFlag":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mHighestTemperData:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLowestTemperData:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 324
    const/16 v18, 0x1

    .line 328
    :cond_1
    int-to-double v2, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v1}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->calcHeight(Ljava/lang/Double;Z)D

    move-result-wide v4

    sub-double v14, v2, v4

    .line 329
    .local v14, "calcMiddle":D
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    double-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mWeaDotRadius:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mDotPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 335
    const/16 v20, 0x0

    .line 336
    .local v20, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mSunRiseOrSetFlag:I

    if-nez v2, :cond_5

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mContext:Landroid/content/Context;

    const v3, 0x7f09012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 349
    :cond_2
    :goto_1
    if-eqz v20, :cond_8

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v9, v2

    .line 352
    .local v9, "baseX":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperature_offset:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 359
    .end local v9    # "baseX":I
    :goto_2
    int-to-double v2, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v1}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->calcHeight(Ljava/lang/Double;Z)D

    move-result-wide v4

    sub-double v12, v2, v4

    .line 360
    .local v12, "calcLeft":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_9

    if-nez v18, :cond_9

    .line 361
    const/4 v3, 0x0

    double-to-float v4, v12

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    double-to-float v6, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    :cond_3
    :goto_3
    int-to-double v2, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v1}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->calcHeight(Ljava/lang/Double;Z)D

    move-result-wide v4

    sub-double v16, v2, v4

    .line 371
    .local v16, "calcRight":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-nez v2, :cond_c

    if-nez v18, :cond_c

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    double-to-float v4, v14

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-wide/from16 v0, v16

    double-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLineDashPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :cond_4
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 339
    .end local v12    # "calcLeft":D
    .end local v16    # "calcRight":D
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mSunRiseOrSetFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mContext:Landroid/content/Context;

    const v3, 0x7f09012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 381
    .end local v8    # "baseHeight":I
    .end local v10    # "bitmapHeight":I
    .end local v11    # "bitmapWidth":I
    .end local v14    # "calcMiddle":D
    .end local v18    # "noDataFlag":Z
    .end local v19    # "noDataImgWidth":I
    .end local v20    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 342
    .restart local v8    # "baseHeight":I
    .restart local v10    # "bitmapHeight":I
    .restart local v11    # "bitmapWidth":I
    .restart local v14    # "calcMiddle":D
    .restart local v18    # "noDataFlag":Z
    .restart local v19    # "noDataImgWidth":I
    .restart local v20    # "text":Ljava/lang/String;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 345
    :cond_7
    if-nez v18, :cond_2

    .line 346
    const-string v20, "\u2014\u2014"

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 355
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mNoDataBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v19, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mNoDataSignHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mPointPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 363
    .restart local v12    # "calcLeft":D
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_a

    if-nez v18, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 364
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 366
    :cond_b
    const/4 v3, 0x0

    double-to-float v4, v12

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    double-to-float v6, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 374
    .restart local v16    # "calcRight":D
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-nez v2, :cond_d

    if-nez v18, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 375
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    .line 377
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    double-to-float v4, v14

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-wide/from16 v0, v16

    double-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 260
    const-string v6, "customweatherline onMeasure"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 263
    .local v4, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 265
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 266
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 268
    .local v2, "heightSize":I
    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getSize(III)I

    move-result v3

    .line 269
    .local v3, "width":I
    const/4 v6, 0x1

    invoke-direct {p0, v1, v2, v6}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->getSize(III)I

    move-result v0

    .line 271
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 275
    return-void

    .line 273
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    .end local v2    # "heightSize":I
    .end local v3    # "width":I
    .end local v4    # "widthMode":I
    .end local v5    # "widthSize":I
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v6
.end method

.method public setLastData(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mLastTemp"    # Ljava/lang/Integer;

    .prologue
    .line 406
    iput-object p1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLastTemperData:Ljava/lang/Integer;

    .line 407
    return-void
.end method

.method public setLowHighestData(II)V
    .locals 0
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 254
    iput p1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mLowestTemperData:I

    .line 255
    iput p2, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mHighestTemperData:I

    .line 256
    return-void
.end method

.method public setSunRiseOrSetFlag(I)V
    .locals 0
    .param p1, "sunRiseOrSetFlag"    # I

    .prologue
    .line 244
    iput p1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mSunRiseOrSetFlag:I

    .line 245
    return-void
.end method

.method public setTemperData([Ljava/lang/Double;)V
    .locals 0
    .param p1, "temperData"    # [Ljava/lang/Double;

    .prologue
    .line 240
    iput-object p1, p0, Lcn/nubia/weather/ui/view/CustomWeatherLineView;->mTemperData:[Ljava/lang/Double;

    .line 241
    return-void
.end method
