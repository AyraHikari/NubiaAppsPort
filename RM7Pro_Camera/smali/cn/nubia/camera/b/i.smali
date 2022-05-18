.class public Lcn/nubia/camera/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:F

.field static final b:[[Ljava/lang/Object;

.field static final c:[Ljava/lang/Object;

.field static final d:[Ljava/lang/Object;

.field public static final e:[[Ljava/lang/String;

.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 26
    sget-object v0, Lcn/nubia/camera/b/l;->a:Lcn/nubia/camera/b/h;

    invoke-interface {v0}, Lcn/nubia/camera/b/h;->a()F

    move-result v0

    sput v0, Lcn/nubia/camera/b/i;->a:F

    const/16 v1, 0x30

    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f080209

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v6, 0x7f0f016c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string v6, "cow"

    const/4 v8, 0x2

    aput-object v6, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v3, v9

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const v6, 0x7f0f0187

    .line 30
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    const-string v6, "sheep"

    aput-object v6, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v9

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const v6, 0x7f0f0183

    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    const-string v6, "rabbit"

    aput-object v6, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v9

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const v6, 0x7f0f017a

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    const-string v6, "monkey"

    aput-object v6, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v9

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const v6, 0x7f0f0166

    .line 33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    const-string v6, "bird"

    aput-object v6, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v9

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const v6, 0x7f0f0171

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    const-string v6, "fish"

    aput-object v6, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v9

    const/4 v6, 0x5

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/Object;

    const v10, 0x7f080215

    .line 35
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v5

    const v11, 0x7f0f0176

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v7

    const-string v11, "green_leaf"

    aput-object v11, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v3, v9

    const/4 v12, 0x6

    aput-object v3, v1, v12

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v10, v3, v5

    const v13, 0x7f0f016f

    .line 36
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const-string v13, "fall_leaf"

    aput-object v13, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/4 v14, 0x7

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f08020b

    .line 37
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v14, 0x7f0f0167

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const-string v14, "blue_sky"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/16 v14, 0x8

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f080220

    .line 38
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v14, 0x7f0f0186

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const-string v14, "sea"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/16 v14, 0x9

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f08020f

    .line 39
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v14, 0x7f0f016d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const-string v14, "desert"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/16 v14, 0xa

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f080219

    .line 40
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v14, 0x7f0f017b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const-string v14, "mountain"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f080225

    .line 41
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v14, 0x7f0f018f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const-string v14, "waterfall"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/16 v14, 0xc

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f08021e

    .line 42
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v14, 0x7f0f0184

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const-string v14, "rainbow"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/16 v14, 0xd

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f080221

    .line 43
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v14, 0x7f0f0188

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const-string v14, "snow_scene"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v9

    const/16 v14, 0xe

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const v14, 0x7f08021a

    .line 44
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v5

    const v15, 0x7f0f0170

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const-string v15, "fireworks"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v9

    const/16 v15, 0xf

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v14, v3, v5

    const v15, 0x7f0f017d

    .line 45
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const-string v15, "night_sky"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v9

    const/16 v15, 0x10

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const v15, 0x7f08020a

    .line 46
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v5

    const v15, 0x7f0f0165

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const-string v15, "bicycle"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v9

    const/16 v15, 0x11

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const v15, 0x7f080224

    .line 47
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v5

    const v15, 0x7f0f018c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const-string v15, "train"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v9

    const/16 v15, 0x12

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const v15, 0x7f080208

    .line 48
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v5

    const v15, 0x7f0f0161

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const-string v15, "airplane"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v9

    const/16 v15, 0x13

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const v15, 0x7f08020c

    .line 49
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v5

    const v15, 0x7f0f0168

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const-string v15, "boat"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v9

    const/16 v15, 0x14

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const v15, 0x7f080214

    .line 50
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v5

    const v16, 0x7f0f0163

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "apple"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x15

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v16, 0x7f0f017f

    .line 51
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "pear"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x16

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v16, 0x7f0f017e

    .line 52
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "orange"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x17

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v16, 0x7f0f018e

    .line 53
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "vitis"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x18

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v16, 0x7f0f0164

    .line 54
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "banana"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x19

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v16, 0x7f0f0180

    .line 55
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "pineapple"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x1a

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v16, 0x7f0f0189

    .line 56
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "strawberry"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x1b

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v16, 0x7f0f0190

    .line 57
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v7

    const-string v16, "watermelon"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x1c

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    const v16, 0x7f080213

    .line 58
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v5

    const v17, 0x7f0f0169

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v7

    const-string v17, "cake"

    aput-object v17, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v3, v9

    const/16 v17, 0x1d

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v16, v3, v5

    const v17, 0x7f0f0174

    .line 59
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v7

    const-string v17, "fried_dish"

    aput-object v17, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v3, v9

    const/16 v17, 0x1e

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v16, v3, v5

    const v17, 0x7f0f0179

    .line 60
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v7

    const-string v17, "kabob"

    aput-object v17, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v3, v9

    const/16 v17, 0x1f

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/Object;

    const v17, 0x7f08021c

    .line 61
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v5

    const v17, 0x7f0f0182

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v7

    const-string v12, "portrait"

    aput-object v12, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v3, v9

    const/16 v18, 0x20

    aput-object v3, v1, v18

    new-array v3, v2, [Ljava/lang/Object;

    const v18, 0x7f080223

    .line 62
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v5

    const v18, 0x7f0f018b

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v7

    const-string v6, "text"

    aput-object v6, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v3, v9

    const/16 v19, 0x21

    aput-object v3, v1, v19

    new-array v3, v2, [Ljava/lang/Object;

    const v19, 0x7f080210

    .line 63
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v5

    const v19, 0x7f0f016e

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v7

    const-string v19, "dog"

    aput-object v19, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v3, v9

    const/16 v19, 0x22

    aput-object v3, v1, v19

    new-array v3, v2, [Ljava/lang/Object;

    const v19, 0x7f08020e

    .line 64
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v5

    const v19, 0x7f0f016b

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v7

    const-string v19, "cat"

    aput-object v19, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v3, v9

    const/16 v19, 0x23

    aput-object v3, v1, v19

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const v4, 0x7f0f0162

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "animal"

    aput-object v4, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x24

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f080212

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0f0172

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "flower"

    aput-object v4, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x25

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v10, v3, v5

    const v4, 0x7f0f0181

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "plants"

    aput-object v4, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v3, v9

    const/16 v19, 0x26

    aput-object v3, v1, v19

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v10, v3, v5

    const v10, 0x7f0f0177

    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const-string v10, "green_plants"

    aput-object v10, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v3, v9

    const/16 v19, 0x27

    aput-object v3, v1, v19

    new-array v3, v2, [Ljava/lang/Object;

    const v19, 0x7f080222

    .line 69
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v5

    const v19, 0x7f0f018a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v7

    const-string v7, "sunrise_sunset"

    aput-object v7, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v3, v9

    const/16 v20, 0x28

    aput-object v3, v1, v20

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v14, v3, v5

    const v14, 0x7f0f017c

    .line 70
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1

    aput-object v14, v3, v19

    const-string v14, "night_scene"

    aput-object v14, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v3, v9

    const/16 v20, 0x29

    aput-object v3, v1, v20

    new-array v3, v2, [Ljava/lang/Object;

    const v20, 0x7f080216

    .line 71
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v5

    const v20, 0x7f0f0178

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v19, 0x1

    aput-object v20, v3, v19

    const-string v20, "high_buildings"

    aput-object v20, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v3, v9

    const/16 v20, 0x2a

    aput-object v3, v1, v20

    new-array v3, v2, [Ljava/lang/Object;

    const v20, 0x7f08020d

    .line 72
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v5

    const v20, 0x7f0f016a

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v19, 0x1

    aput-object v20, v3, v19

    const-string v20, "car"

    aput-object v20, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v3, v9

    const/16 v20, 0x2b

    aput-object v3, v1, v20

    new-array v3, v2, [Ljava/lang/Object;

    const v20, 0x7f08021f

    .line 73
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v3, v5

    const v20, 0x7f0f0185

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v19, 0x1

    aput-object v20, v3, v19

    const-string v20, "scenery"

    aput-object v20, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v3, v9

    const/16 v20, 0x2c

    aput-object v3, v1, v20

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v16, v3, v5

    const v16, 0x7f0f0173

    .line 74
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v19

    const-string v16, "food"

    aput-object v16, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v16, 0x2d

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v5

    const v15, 0x7f0f0175

    .line 75
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v19

    const-string v15, "fruit"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v9

    const/16 v15, 0x2e

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const v15, 0x7f080224

    .line 76
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v5

    const v15, 0x7f0f018d

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v3, v16

    const-string v15, "vehicle"

    aput-object v15, v3, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    const/16 v0, 0x2f

    aput-object v3, v1, v0

    sput-object v1, Lcn/nubia/camera/b/i;->b:[[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const v1, 0x7f080217

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0f0135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "microspur"

    aput-object v1, v0, v8

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v9

    sput-object v0, Lcn/nubia/camera/b/i;->c:[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const v3, 0x7f08021c

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    const v3, 0x7f0f0182

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v15, 0x1

    aput-object v3, v0, v15

    const-string v3, "face"

    aput-object v3, v0, v8

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v9

    sput-object v0, Lcn/nubia/camera/b/i;->d:[Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    const-string v3, "face"

    .line 90
    filled-new-array {v12, v12, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const-string v20, "animal"

    const-string v21, "dog"

    const-string v22, "cat"

    const-string v23, "cow"

    const-string v24, "sheep"

    const-string v25, "rabbit"

    const-string v26, "monkey"

    const-string v27, "bird"

    const-string v28, "fish"

    filled-new-array/range {v20 .. v28}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const-string v19, "flower"

    const-string v20, "flower"

    const-string v21, "apple"

    const-string v22, "pear"

    const-string v23, "orange"

    const-string v24, "vitis"

    const-string v25, "banana"

    const-string v26, "pineapple"

    const-string v27, "strawberry"

    const-string v28, "watermelon"

    const-string v29, "fruit"

    filled-new-array/range {v19 .. v29}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    filled-new-array {v10, v11, v13, v10, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const-string v19, "scenery"

    const-string v20, "blue_sky"

    const-string v21, "sea"

    const-string v22, "desert"

    const-string v23, "mountain"

    const-string v24, "waterfall"

    const-string v25, "rainbow"

    const-string v26, "snow_scene"

    const-string v27, "high_buildings"

    const-string v28, "car"

    const-string v29, "bicycle"

    const-string v30, "train"

    const-string v31, "airplane"

    const-string v32, "boat"

    filled-new-array/range {v19 .. v32}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    filled-new-array {v7, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "night_sky"

    const-string v3, "fireworks"

    filled-new-array {v14, v2, v14, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "food"

    const-string v3, "fried_dish"

    const-string v5, "kabob"

    const-string v7, "cake"

    filled-new-array {v2, v3, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    filled-new-array {v6, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/camera/b/i;->e:[[Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/b/i;->f:Ljava/util/HashMap;

    const-string v1, "13"

    .line 106
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    .line 129
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "group_name"

    const-string v2, "group_name_text"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 133
    :goto_0
    sget-object v3, Lcn/nubia/camera/b/i;->b:[[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 134
    aget-object v6, v3, v2

    aget-object v4, v6, v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v1

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    .line 135
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    .line 134
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return cursor:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LabelGroup"

    invoke-static {v1, p0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 116
    sget-object v0, Lcn/nubia/camera/b/i;->e:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 117
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 118
    invoke-static {v7, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    aget-object p0, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object p0
.end method
