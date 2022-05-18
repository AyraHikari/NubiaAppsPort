.class public Lcom/android/calculator2/KeyMaps;
.super Ljava/lang/Object;
.source "KeyMaps.java"


# static fields
.field private static final CHAR_DIGIT_UNKNOWN:C = '\u2007'

.field public static final ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final MINUS_SIGN:C = '\u2212'

.field public static final NOT_DIGIT:I = 0xa

.field private static mActivity:Landroid/app/Activity;

.field private static mDecimalPt:C

.field private static mPiChar:C

.field private static sKeyValForFun:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocaleForMaps:Ljava/util/Locale;

.field private static sOutputForResultChar:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addButtonToFunMap(I)V
    .locals 2

    .line 570
    :try_start_0
    sget-object v0, Lcom/android/calculator2/KeyMaps;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 572
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 574
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static addButtonToOutputMap(CI)V
    .locals 1

    .line 583
    sget-object v0, Lcom/android/calculator2/KeyMaps;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 584
    sget-object v0, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static addImageButtonToOutputMap(CI)V
    .locals 1

    .line 593
    sget-object v0, Lcom/android/calculator2/KeyMaps;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 594
    sget-object p1, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static digVal(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xa

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    return v0

    :pswitch_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00a3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromByte(B)I
    .locals 0

    int-to-char p0, p0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const p0, 0x7f0a00d8

    return p0

    :sswitch_1
    const p0, 0x7f0a00d7

    return p0

    :sswitch_2
    const p0, 0x7f0a0156

    return p0

    :sswitch_3
    const p0, 0x7f0a007f

    return p0

    :sswitch_4
    const p0, 0x7f0a00d5

    return p0

    :sswitch_5
    const p0, 0x7f0a007e

    return p0

    :sswitch_6
    const p0, 0x7f0a00d3

    return p0

    :sswitch_7
    const p0, 0x7f0a0154

    return p0

    :sswitch_8
    const p0, 0x7f0a00d2

    return p0

    :sswitch_9
    const p0, 0x7f0a00d1

    return p0

    :sswitch_a
    const p0, 0x7f0a00d6

    return p0

    :sswitch_b
    const p0, 0x7f0a00d4

    return p0

    :sswitch_c
    const p0, 0x7f0a00d0

    return p0

    :sswitch_d
    const p0, 0x7f0a0155

    return p0

    :sswitch_e
    const p0, 0x7f0a0150

    return p0

    :sswitch_f
    const p0, 0x7f0a0158

    return p0

    :sswitch_10
    const p0, 0x7f0a014f

    return p0

    :sswitch_11
    const p0, 0x7f0a0152

    return p0

    :sswitch_12
    const p0, 0x7f0a0196

    return p0

    :sswitch_13
    const p0, 0x7f0a0113

    return p0

    :sswitch_14
    const p0, 0x7f0a0153

    return p0

    :sswitch_15
    const p0, 0x7f0a0151

    return p0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_15
        0x25 -> :sswitch_14
        0x28 -> :sswitch_13
        0x29 -> :sswitch_12
        0x2a -> :sswitch_11
        0x2b -> :sswitch_10
        0x2d -> :sswitch_f
        0x2f -> :sswitch_e
        0x32 -> :sswitch_d
        0x43 -> :sswitch_c
        0x45 -> :sswitch_b
        0x4c -> :sswitch_a
        0x53 -> :sswitch_9
        0x54 -> :sswitch_8
        0x5e -> :sswitch_7
        0x63 -> :sswitch_6
        0x65 -> :sswitch_5
        0x6c -> :sswitch_4
        0x70 -> :sswitch_3
        0x72 -> :sswitch_2
        0x73 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method public static funForString(Ljava/lang/String;I)I
    .locals 2

    .line 678
    invoke-static {}, Lcom/android/calculator2/KeyMaps;->validateMaps()V

    const/16 v0, 0x28

    .line 679
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 681
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 683
    sget-object v0, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 684
    sget-object p1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Integer;

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 687
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static isBinary(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a014f
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isFunc(I)Z
    .locals 2

    .line 353
    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->isTrigFunc(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x7f0a00d4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isPrefix(I)Z
    .locals 1

    const v0, 0x7f0a0156

    if-eq p0, v0, :cond_0

    const v0, 0x7f0a0158

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSuffix(I)Z
    .locals 1

    const v0, 0x7f0a0151

    if-eq p0, v0, :cond_0

    const v0, 0x7f0a0153

    if-eq p0, v0, :cond_0

    const v0, 0x7f0a0155

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isTrigFunc(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static keyForChar(C)I
    .locals 3

    .line 517
    invoke-static {}, Lcom/android/calculator2/KeyMaps;->validateMaps()V

    .line 518
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 519
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    .line 520
    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f0a0098

    packed-switch p0, :pswitch_data_0

    const v1, 0x7f0a007f

    sparse-switch p0, :sswitch_data_0

    .line 556
    sget-char v2, Lcom/android/calculator2/KeyMaps;->mDecimalPt:C

    if-ne p0, v2, :cond_1

    return v0

    .line 557
    :cond_1
    sget-char v0, Lcom/android/calculator2/KeyMaps;->mPiChar:C

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, -0x1

    return p0

    :sswitch_0
    const p0, 0x7f0a0154

    return p0

    :sswitch_1
    return v1

    :sswitch_2
    const p0, 0x7f0a007e

    return p0

    :sswitch_3
    const p0, 0x7f0a0153

    return p0

    :sswitch_4
    const p0, 0x7f0a0151

    return p0

    :pswitch_0
    :sswitch_5
    const p0, 0x7f0a0150

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    :sswitch_6
    const p0, 0x7f0a0158

    return p0

    :pswitch_3
    const/16 p0, 0x2c

    return p0

    :pswitch_4
    const p0, 0x7f0a014f

    return p0

    :pswitch_5
    :sswitch_7
    const p0, 0x7f0a0152

    return p0

    :pswitch_6
    const p0, 0x7f0a0196

    return p0

    :pswitch_7
    const p0, 0x7f0a0113

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_4
        0x25 -> :sswitch_3
        0x45 -> :sswitch_2
        0x50 -> :sswitch_1
        0x5e -> :sswitch_0
        0x65 -> :sswitch_2
        0x70 -> :sswitch_1
        0xd7 -> :sswitch_7
        0xf7 -> :sswitch_5
        0x2212 -> :sswitch_6
    .end sparse-switch
.end method

.method public static keyForDigVal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const p0, 0x7f0a00ad

    return p0

    :pswitch_1
    const p0, 0x7f0a00ac

    return p0

    :pswitch_2
    const p0, 0x7f0a00ab

    return p0

    :pswitch_3
    const p0, 0x7f0a00aa

    return p0

    :pswitch_4
    const p0, 0x7f0a00a9

    return p0

    :pswitch_5
    const p0, 0x7f0a00a8

    return p0

    :pswitch_6
    const p0, 0x7f0a00a7

    return p0

    :pswitch_7
    const p0, 0x7f0a00a6

    return p0

    :pswitch_8
    const p0, 0x7f0a00a5

    return p0

    :pswitch_9
    const p0, 0x7f0a00a3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 509
    sput-object p0, Lcom/android/calculator2/KeyMaps;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static toByte(I)B
    .locals 1

    const v0, 0x7f0a0113

    if-eq p0, v0, :cond_2

    const v0, 0x7f0a0158

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a0196

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/16 p0, 0x30

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x72

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x32

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x5e

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x25

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x2a

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x21

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x2f

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x2b

    goto :goto_0

    :pswitch_8
    const/16 p0, 0x74

    goto :goto_0

    :pswitch_9
    const/16 p0, 0x73

    goto :goto_0

    :pswitch_a
    const/16 p0, 0x4c

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x6c

    goto :goto_0

    :pswitch_c
    const/16 p0, 0x45

    goto :goto_0

    :pswitch_d
    const/16 p0, 0x63

    goto :goto_0

    :pswitch_e
    const/16 p0, 0x54

    goto :goto_0

    :pswitch_f
    const/16 p0, 0x53

    goto :goto_0

    :pswitch_10
    const/16 p0, 0x43

    goto :goto_0

    :pswitch_11
    const/16 p0, 0x70

    goto :goto_0

    :pswitch_12
    const/16 p0, 0x65

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    goto :goto_0

    :cond_1
    const/16 p0, 0x2d

    goto :goto_0

    :cond_2
    const/16 p0, 0x28

    :goto_0
    int-to-byte p0, p0

    return p0

    :pswitch_data_0
    .packed-switch 0x7f0a007e
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00d0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a014f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toDescriptiveString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const v0, 0x7f0a0098

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a0113

    const v1, 0x7f110053

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a0151

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0154

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0196

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 279
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110050

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 273
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11004f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 294
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11004e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11004d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 297
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 276
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 288
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 282
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110049

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :pswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110048

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f110063

    .line 302
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f11005e

    .line 304
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f11005b

    .line 271
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 300
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f110043

    .line 306
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7f0a00d0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const v0, 0x7f0a0098

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a0113

    const v1, 0x7f11009c

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0158

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0196

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const-string p0, ""

    return-object p0

    :pswitch_0
    const p1, 0x7f1100be

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1100d6

    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f1100bc

    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1100bb

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f1100ba

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f1100b8

    .line 54
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p1, 0x7f1100b7

    .line 85
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f1100b6

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :pswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110096

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110095

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :pswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110094

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :pswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110093

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :pswitch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :pswitch_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110091

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :pswitch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110090

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :pswitch_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11008f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :pswitch_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f11008e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    const p1, 0x7f110072

    .line 114
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    const p1, 0x7f110071

    .line 112
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    const p1, 0x7f110070

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    const p1, 0x7f11006f

    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const p1, 0x7f11006e

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    const p1, 0x7f11006d

    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    const p1, 0x7f11006c

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    const p1, 0x7f11006b

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    const p1, 0x7f11006a

    .line 98
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const p1, 0x7f110069

    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    const p1, 0x7f110068

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1c
    const p1, 0x7f110033

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d
    const p1, 0x7f110032

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f1100c7

    .line 79
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f1100bf

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f11003d

    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7f0a007e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00a3
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a00d0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0a014f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 700
    invoke-static {}, Lcom/android/calculator2/KeyMaps;->validateMaps()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 702
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-lt v2, v4, :cond_0

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    .line 704
    :cond_0
    sget-object v4, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "Calculator"

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 710
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static validateMaps()V
    .locals 12

    .line 602
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 603
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sLocaleForMaps:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Calculator"

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting locale to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    .line 607
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "sin"

    const v3, 0x7f0a00d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "cos"

    const v4, 0x7f0a00d3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "tan"

    const v5, 0x7f0a00d8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "arcsin"

    const v6, 0x7f0a00d1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "arccos"

    const v7, 0x7f0a00d0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "arctan"

    const v8, 0x7f0a00d2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "asin"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "acos"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "atan"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "ln"

    const v9, 0x7f0a00d5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "log"

    const v10, 0x7f0a00d6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v1, Lcom/android/calculator2/KeyMaps;->sKeyValForFun:Ljava/util/HashMap;

    const-string v2, "sqrt"

    const v11, 0x7f0a0156

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-static {v3}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 620
    invoke-static {v4}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 621
    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 622
    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 623
    invoke-static {v7}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 624
    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 625
    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 626
    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->addButtonToFunMap(I)V

    .line 631
    :cond_0
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    sput-char v1, Lcom/android/calculator2/KeyMaps;->mDecimalPt:C

    const/4 v1, 0x0

    .line 635
    :try_start_0
    sput-char v1, Lcom/android/calculator2/KeyMaps;->mPiChar:C

    .line 636
    sget-object v2, Lcom/android/calculator2/KeyMaps;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110033

    .line 637
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 639
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sput-char v2, Lcom/android/calculator2/KeyMaps;->mPiChar:C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 642
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 645
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    .line 646
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "E"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x45

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "E"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x2007

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const-string v3, "\u2026"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "\u2026"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "l"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "n"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 658
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 657
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x221a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "\u221a"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v2, Lcom/android/calculator2/KeyMaps;->sOutputForResultChar:Ljava/util/HashMap;

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "\u03c0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2d

    const v3, 0x7f0a0158

    .line 661
    invoke-static {v2, v3}, Lcom/android/calculator2/KeyMaps;->addImageButtonToOutputMap(CI)V

    const/16 v2, 0x2e

    const v3, 0x7f0a0098

    .line 662
    invoke-static {v2, v3}, Lcom/android/calculator2/KeyMaps;->addButtonToOutputMap(CI)V

    :goto_1
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    .line 664
    invoke-static {v1}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/calculator2/KeyMaps;->addButtonToOutputMap(CI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 667
    :cond_2
    sput-object v0, Lcom/android/calculator2/KeyMaps;->sLocaleForMaps:Ljava/util/Locale;

    return-void
.end method
