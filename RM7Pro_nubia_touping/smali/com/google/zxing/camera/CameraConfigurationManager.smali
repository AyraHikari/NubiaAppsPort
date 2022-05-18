.class final Lcom/google/zxing/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final DESIRED_SHARPNESS:I = 0x1e

.field private static final TAG:Ljava/lang/String;

.field private static final TEN_DESIRED_ZOOM:I = 0x1b


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private previewFormat:I

.field private previewFormatString:Ljava/lang/String;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private static findBestMotZoomValue(Ljava/lang/CharSequence;I)I
    .locals 14
    .param p0, "stringValues"    # Ljava/lang/CharSequence;
    .param p1, "tenDesiredZoom"    # I

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "tenBestValue":I
    sget-object v9, Lcom/google/zxing/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "var3":[Ljava/lang/String;
    array-length v7, v6

    .line 146
    .local v7, "var4":I
    const/4 v8, 0x0

    .local v8, "var5":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 147
    aget-object v0, v6, v8

    .line 148
    .local v0, "stringValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 152
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 157
    .local v4, "value":D
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v4

    double-to-int v2, v10

    .line 158
    .local v2, "tenValue":I
    int-to-double v10, p1

    sub-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    sub-int v9, p1, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v12, v9

    cmpg-double v9, v10, v12

    if-gez v9, :cond_0

    .line 159
    move v1, v2

    .line 146
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "tenValue":I
    .end local v4    # "value":D
    :catch_0
    move-exception v3

    .line 163
    .end local v0    # "stringValue":Ljava/lang/String;
    .end local p1    # "tenDesiredZoom":I
    :goto_1
    return p1

    .restart local p1    # "tenDesiredZoom":I
    :cond_1
    move p1, v1

    goto :goto_1
.end method

.method private static findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 16
    .param p0, "previewSizeValueString"    # Ljava/lang/CharSequence;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "bestX":I
    const/4 v2, 0x0

    .line 102
    .local v2, "bestY":I
    const v3, 0x7fffffff

    .line 103
    .local v3, "diff":I
    sget-object v13, Lcom/google/zxing/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "var5":[Ljava/lang/String;
    array-length v11, v10

    .line 106
    .local v11, "var6":I
    const/4 v12, 0x0

    .local v12, "var7":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 107
    aget-object v8, v10, v12

    .line 108
    .local v8, "previewSize":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 109
    const/16 v13, 0x78

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 110
    .local v4, "dimPosition":I
    if-gez v4, :cond_1

    .line 111
    sget-object v13, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad preview-size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 117
    .local v6, "newX":I
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 123
    .local v7, "newY":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int v13, v6, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    sub-int v14, v7, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int v5, v13, v14

    .line 124
    .local v5, "newDiff":I
    if-nez v5, :cond_3

    .line 125
    move v1, v6

    .line 126
    move v2, v7

    .line 138
    .end local v4    # "dimPosition":I
    .end local v5    # "newDiff":I
    .end local v6    # "newX":I
    .end local v7    # "newY":I
    .end local v8    # "previewSize":Ljava/lang/String;
    :cond_2
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    return-object v13

    .line 118
    .restart local v4    # "dimPosition":I
    .restart local v8    # "previewSize":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 119
    .local v9, "var13":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad preview-size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v9    # "var13":Ljava/lang/NumberFormatException;
    .restart local v5    # "newDiff":I
    .restart local v6    # "newX":I
    .restart local v7    # "newY":I
    :cond_3
    if-ge v5, v3, :cond_0

    .line 131
    move v1, v6

    .line 132
    move v2, v7

    .line 133
    move v3, v5

    goto :goto_1

    .line 138
    .end local v4    # "dimPosition":I
    .end local v5    # "newDiff":I
    .end local v6    # "newX":I
    .end local v7    # "newY":I
    .end local v8    # "previewSize":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private static getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 81
    const-string v2, "preview-size-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "previewSizeValueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 83
    const-string v2, "preview-size-value"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "cameraResolution":Landroid/graphics/Point;
    if-eqz v1, :cond_1

    .line 88
    sget-object v2, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview-size-values parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v1, p1}, Lcom/google/zxing/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 92
    :cond_1
    if-nez v0, :cond_2

    .line 93
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    iget v2, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x3

    iget v3, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 96
    .restart local v0    # "cameraResolution":Landroid/graphics/Point;
    :cond_2
    return-object v0
.end method

.method public static getDesiredSharpness()I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x1e

    return v0
.end method

.method private setFlash(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 167
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Behold II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/zxing/camera/CameraManager;->SDK_INT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 168
    const-string v0, "flash-value"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 173
    :goto_0
    const-string v0, "flash-mode"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void

    .line 170
    :cond_0
    const-string v0, "flash-value"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 20
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 177
    const-string v14, "zoom-supported"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 178
    .local v13, "zoomSupportedString":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 179
    :cond_0
    const/16 v8, 0x1b

    .line 180
    .local v8, "tenDesiredZoom":I
    const-string v14, "max-zoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "maxZoomString":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 183
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v9, v14

    .line 184
    .local v9, "tenMaxZoom":I
    if-le v8, v9, :cond_1

    .line 185
    move v8, v9

    .line 192
    .end local v9    # "tenMaxZoom":I
    :cond_1
    :goto_0
    const-string v14, "taking-picture-zoom-max"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "takingPictureZoomMaxString":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 195
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 196
    .restart local v9    # "tenMaxZoom":I
    if-le v8, v9, :cond_2

    .line 197
    move v8, v9

    .line 204
    .end local v9    # "tenMaxZoom":I
    :cond_2
    :goto_1
    const-string v14, "mot-zoom-values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "motZoomValuesString":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 206
    invoke-static {v6, v8}, Lcom/google/zxing/camera/CameraConfigurationManager;->findBestMotZoomValue(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 209
    :cond_3
    const-string v14, "mot-zoom-step"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "motZoomStepString":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 212
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 213
    .local v4, "motZoomStep":D
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v14, v4

    double-to-int v10, v14

    .line 214
    .local v10, "tenZoomStep":I
    const/4 v14, 0x1

    if-le v10, v14, :cond_4

    .line 215
    rem-int v14, v8, v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v8, v14

    .line 221
    .end local v4    # "motZoomStep":D
    .end local v10    # "tenZoomStep":I
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    if-eqz v6, :cond_6

    .line 222
    :cond_5
    const-string v14, "zoom"

    int-to-double v0, v8

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_6
    if-eqz v7, :cond_7

    .line 226
    const-string v14, "taking-picture-zoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 230
    .end local v2    # "maxZoomString":Ljava/lang/String;
    .end local v3    # "motZoomStepString":Ljava/lang/String;
    .end local v6    # "motZoomValuesString":Ljava/lang/String;
    .end local v7    # "takingPictureZoomMaxString":Ljava/lang/String;
    .end local v8    # "tenDesiredZoom":I
    :cond_7
    return-void

    .line 187
    .restart local v2    # "maxZoomString":Ljava/lang/String;
    .restart local v8    # "tenDesiredZoom":I
    :catch_0
    move-exception v12

    .line 188
    .local v12, "var13":Ljava/lang/NumberFormatException;
    sget-object v14, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad max-zoom: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v12    # "var13":Ljava/lang/NumberFormatException;
    .restart local v7    # "takingPictureZoomMaxString":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 200
    .local v11, "var12":Ljava/lang/NumberFormatException;
    sget-object v14, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad taking-picture-zoom-max: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v11    # "var12":Ljava/lang/NumberFormatException;
    .restart local v3    # "motZoomStepString":Ljava/lang/String;
    .restart local v6    # "motZoomValuesString":Ljava/lang/String;
    :catch_2
    move-exception v14

    goto :goto_2
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getPreviewFormat()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->previewFormat:I

    return v0
.end method

.method getPreviewFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 35
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    iput v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->previewFormat:I

    .line 36
    const-string v4, "preview-format"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    .line 37
    sget-object v4, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default preview format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->previewFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 39
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 40
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 41
    sget-object v4, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 43
    .local v3, "screenResolutionForCamera":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 44
    iget-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 45
    iget-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_0

    .line 46
    iget-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 47
    iget-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 50
    :cond_0
    invoke-static {v2, v3}, Lcom/google/zxing/camera/CameraConfigurationManager;->getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 51
    sget-object v4, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 56
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/google/zxing/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting preview size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 58
    invoke-direct {p0, v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 59
    invoke-direct {p0, v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->setZoom(Landroid/hardware/Camera$Parameters;)V

    .line 60
    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 62
    return-void
.end method
