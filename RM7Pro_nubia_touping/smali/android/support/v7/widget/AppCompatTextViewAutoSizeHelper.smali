.class Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ACTVAutoSizeHelper"

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field private static final VERY_WIDE:I = 0x100000

.field private static sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private final mContext:Landroid/content/Context;

.field private mHasPresetAutoSizeValues:Z

.field private mNeedsAutoSizeText:Z

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 79
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 81
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 83
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 85
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 88
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 92
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 99
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .locals 7
    .param p1, "presetValues"    # [I

    .prologue
    .line 446
    array-length v3, p1

    .line 447
    .local v3, "presetValuesLength":I
    if-nez v3, :cond_1

    .line 470
    .end local p1    # "presetValues":[I
    :cond_0
    :goto_0
    return-object p1

    .line 450
    .restart local p1    # "presetValues":[I
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 452
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v4, "uniqueValidSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 454
    aget v1, p1, v2

    .line 456
    .local v1, "currentPresetValue":I
    if-lez v1, :cond_2

    .line 457
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 462
    .end local v1    # "currentPresetValue":I
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 465
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 466
    .local v5, "uniqueValidSizesLength":I
    new-array v0, v5, [I

    .line 467
    .local v0, "cleanedUpSizes":[I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_4

    .line 468
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v2

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 470
    goto :goto_0
.end method

.method private clearAutoSizeConfiguration()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 584
    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 585
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 586
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 587
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 588
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 589
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 590
    return-void
.end method

.method private createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;
    .param p3, "availableWidth"    # I
    .param p4, "maxLines"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 710
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string v3, "getTextDirectionHeuristic"

    sget-object v4, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextDirectionHeuristic;

    .line 714
    .local v1, "textDirectionHeuristic":Landroid/text/TextDirectionHeuristic;
    const/4 v2, 0x0

    .line 715
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    .line 714
    invoke-static {p1, v2, v3, v4, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 717
    .local v0, "layoutBuilder":Landroid/text/StaticLayout$Builder;
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 719
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 720
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v4

    .line 718
    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 721
    invoke-virtual {v3}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 722
    invoke-virtual {v3}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 723
    invoke-virtual {v3}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    const/4 v3, -0x1

    if-ne p4, v3, :cond_0

    const p4, 0x7fffffff

    .line 724
    .end local p4    # "maxLines":I
    :cond_0
    invoke-virtual {v2, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 725
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 726
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    return-object v2
.end method

.method private createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;
    .param p3, "availableWidth"    # I

    .prologue
    .line 732
    const/high16 v5, 0x3f800000    # 1.0f

    .line 733
    .local v5, "lineSpacingMultiplier":F
    const/4 v6, 0x0

    .line 734
    .local v6, "lineSpacingAdd":F
    const/4 v7, 0x1

    .line 736
    .local v7, "includePad":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    .line 754
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 744
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string v1, "getLineSpacingMultiplier"

    .line 745
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 744
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 746
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string v1, "getLineSpacingExtra"

    .line 747
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 746
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string v1, "getIncludeFontPadding"

    .line 749
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 748
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_0
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .locals 7
    .param p1, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 641
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v4, v5

    .line 642
    .local v4, "sizesCount":I
    if-nez v4, :cond_0

    .line 643
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No available text sizes to choose from."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 646
    :cond_0
    const/4 v0, 0x0

    .line 647
    .local v0, "bestSizeIndex":I
    add-int/lit8 v2, v0, 0x1

    .line 648
    .local v2, "lowIndex":I
    add-int/lit8 v1, v4, -0x1

    .line 650
    .local v1, "highIndex":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 651
    add-int v5, v2, v1

    div-int/lit8 v3, v5, 0x2

    .line 652
    .local v3, "sizeToTryIndex":I
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v5, v5, v3

    invoke-direct {p0, v5, p1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 653
    move v0, v2

    .line 654
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 656
    :cond_1
    add-int/lit8 v1, v3, -0x1

    .line 657
    move v0, v1

    goto :goto_0

    .line 661
    .end local v3    # "sizeToTryIndex":I
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v5, v5, v0

    return v5
.end method

.method private getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 785
    :try_start_0
    sget-object v2, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 786
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 787
    const-class v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 788
    if-eqz v1, :cond_0

    .line 789
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 791
    sget-object v2, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v1

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ACTVAutoSizeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve TextView#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "methodName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 763
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 764
    .local v3, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 768
    .local v1, "exceptionThrown":Z
    :try_start_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 769
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 774
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 775
    move-object v3, p3

    .line 779
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v3

    .line 770
    .restart local v3    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 771
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 772
    :try_start_1
    const-string v4, "ACTVAutoSizeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to invoke TextView#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "() method"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 775
    move-object v3, p3

    goto :goto_0

    .line 774
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 775
    move-object v3, p3

    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    throw v4
.end method

.method private setRawTextSize(F)V
    .locals 7
    .param p1, "size"    # F

    .prologue
    const/4 v6, 0x0

    .line 603
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_2

    .line 604
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, "isInLayout":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 608
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isInLayout()Z

    move-result v1

    .line 611
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 613
    iput-boolean v6, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 615
    const-string v3, "nullLayouts"

    .line 617
    .local v3, "methodName":Ljava/lang/String;
    :try_start_0
    const-string v4, "nullLayouts"

    invoke-direct {p0, v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 618
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 619
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 626
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 631
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidate()V

    .line 634
    .end local v1    # "isInLayout":Z
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_2
    return-void

    .line 621
    .restart local v1    # "isInLayout":Z
    .restart local v3    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 622
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "ACTVAutoSizeHelper"

    const-string v5, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 628
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->forceLayout()V

    goto :goto_1
.end method

.method private setupAutoSizeText()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 509
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-ne v5, v7, :cond_4

    .line 513
    iget-boolean v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v5, v5

    if-nez v5, :cond_3

    .line 515
    :cond_0
    const/4 v1, 0x1

    .line 516
    .local v1, "autoSizeValuesLength":I
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v2, v5

    .line 517
    .local v2, "currentSize":F
    :goto_0
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 518
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 519
    add-int/lit8 v1, v1, 0x1

    .line 520
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v2, v5

    goto :goto_0

    .line 522
    :cond_1
    new-array v0, v1, [I

    .line 523
    .local v0, "autoSizeTextSizesInPx":[I
    iget v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 524
    .local v4, "sizeToAdd":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 525
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v0, v3

    .line 526
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v4, v5

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 528
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 531
    .end local v0    # "autoSizeTextSizesInPx":[I
    .end local v1    # "autoSizeValuesLength":I
    .end local v2    # "currentSize":F
    .end local v3    # "i":I
    .end local v4    # "sizeToAdd":F
    :cond_3
    iput-boolean v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 536
    :goto_2
    iget-boolean v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return v5

    .line 533
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_2
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "textSizes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 421
    .local v2, "textSizesLength":I
    new-array v1, v2, [I

    .line 423
    .local v1, "parsedSizes":[I
    if-lez v2, :cond_1

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 425
    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v0

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 428
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    .line 430
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 433
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v1

    .line 434
    .local v0, "sizesLength":I
    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 435
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v1, :cond_0

    .line 436
    iput v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 437
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 438
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 439
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 441
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    return v1

    :cond_1
    move v1, v3

    .line 434
    goto :goto_0
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .locals 11
    .param p1, "suggestedSizeInPx"    # I
    .param p2, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 665
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 666
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    .line 667
    .local v4, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v4, :cond_0

    .line 668
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-interface {v4, v3, v8}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 669
    .local v5, "transformedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 670
    move-object v3, v5

    .line 674
    .end local v5    # "transformedText":Ljava/lang/CharSequence;
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_2

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    .line 675
    .local v2, "maxLines":I
    :goto_0
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v8, :cond_3

    .line 676
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    iput-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    .line 680
    :goto_1
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 681
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float v9, p1

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 684
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string v9, "getLayoutAlignment"

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {p0, v8, v9, v10}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    .line 686
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_4

    iget v8, p2, Landroid/graphics/RectF;->right:F

    .line 688
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 687
    invoke-direct {p0, v3, v0, v8, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v1

    .line 692
    .local v1, "layout":Landroid/text/StaticLayout;
    :goto_2
    if-eq v2, v6, :cond_5

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-gt v6, v2, :cond_1

    .line 693
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v6, v8, :cond_5

    :cond_1
    move v6, v7

    .line 702
    :goto_3
    return v6

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "maxLines":I
    :cond_2
    move v2, v6

    .line 674
    goto :goto_0

    .line 678
    .restart local v2    # "maxLines":I
    :cond_3
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->reset()V

    goto :goto_1

    .line 687
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_4
    iget v8, p2, Landroid/graphics/RectF;->right:F

    .line 690
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 689
    invoke-direct {p0, v3, v0, v8}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v1

    goto :goto_2

    .line 698
    .restart local v1    # "layout":Landroid/text/StaticLayout;
    :cond_5
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    move v6, v7

    .line 699
    goto :goto_3

    .line 702
    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method

.method private supportsAutoSizeText()Z
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/support/v7/widget/AppCompatEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .locals 3
    .param p1, "autoSizeMinTextSizeInPx"    # F
    .param p2, "autoSizeMaxTextSizeInPx"    # F
    .param p3, "autoSizeStepGranularityInPx"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 484
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_1

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to minimum auto-size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_1
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_2

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The auto-size step granularity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 502
    iput p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 503
    iput p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 504
    iput p3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 506
    return-void
.end method


# virtual methods
.method autoSizeText()V
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 546
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-boolean v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    if-eqz v4, :cond_3

    .line 551
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_0

    .line 555
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string v5, "getHorizontallyScrolling"

    .line 556
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 555
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 557
    .local v2, "horizontallyScrolling":Z
    if-eqz v2, :cond_4

    const/high16 v1, 0x100000

    .line 561
    .local v1, "availableWidth":I
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 562
    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    sub-int v0, v4, v5

    .line 564
    .local v0, "availableHeight":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 568
    sget-object v5, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v5

    .line 569
    :try_start_0
    sget-object v4, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 570
    sget-object v4, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v6, v1

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 571
    sget-object v4, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v6, v0

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 572
    sget-object v4, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v4

    int-to-float v3, v4

    .line 573
    .local v3, "optimalTextSize":F
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    .line 574
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 576
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .end local v0    # "availableHeight":I
    .end local v1    # "availableWidth":I
    .end local v2    # "horizontallyScrolling":Z
    .end local v3    # "optimalTextSize":F
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_0

    .line 557
    .restart local v2    # "horizontallyScrolling":Z
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 559
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 560
    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_1

    .line 576
    .restart local v0    # "availableHeight":I
    .restart local v1    # "availableWidth":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method getAutoSizeMaxTextSize()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 403
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 387
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 371
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 357
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    return v0
.end method

.method isAutoSizeEnabled()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 810
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    .line 104
    const/high16 v2, -0x40800000    # -1.0f

    .line 105
    .local v2, "autoSizeMinTextSizeInPx":F
    const/high16 v1, -0x40800000    # -1.0f

    .line 106
    .local v1, "autoSizeMaxTextSizeInPx":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 108
    .local v4, "autoSizeStepGranularityInPx":F
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {v7, p1, v8, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 114
    :cond_0
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 119
    :cond_1
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 124
    :cond_2
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 125
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 129
    :cond_3
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 130
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 132
    .local v5, "autoSizeStepSizeArrayResId":I
    if-lez v5, :cond_4

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 134
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 135
    .local v3, "autoSizePreDefTextSizes":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    .line 136
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    .end local v3    # "autoSizePreDefTextSizes":Landroid/content/res/TypedArray;
    .end local v5    # "autoSizeStepSizeArrayResId":I
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 142
    iget v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 146
    iget-boolean v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-nez v7, :cond_8

    .line 147
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 150
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    cmpl-float v7, v2, v9

    if-nez v7, :cond_5

    .line 151
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v11, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 157
    :cond_5
    cmpl-float v7, v1, v9

    if-nez v7, :cond_6

    .line 158
    const/high16 v7, 0x42e00000    # 112.0f

    invoke-static {v11, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 164
    :cond_6
    cmpl-float v7, v4, v9

    if-nez v7, :cond_7

    .line 166
    const/high16 v4, 0x3f800000    # 1.0f

    .line 169
    :cond_7
    invoke-direct {p0, v2, v1, v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 174
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    .line 179
    :cond_9
    :goto_0
    return-void

    .line 177
    :cond_a
    iput v10, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    goto :goto_0
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 5
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 266
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v4, p1

    invoke-static {p4, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 268
    .local v1, "autoSizeMinTextSizeInPx":F
    int-to-float v4, p2

    invoke-static {p4, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 270
    .local v0, "autoSizeMaxTextSizeInPx":F
    int-to-float v4, p3

    invoke-static {p4, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 273
    .local v2, "autoSizeStepGranularityInPx":F
    invoke-direct {p0, v1, v0, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 276
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 280
    .end local v0    # "autoSizeMaxTextSizeInPx":F
    .end local v1    # "autoSizeMinTextSizeInPx":F
    .end local v2    # "autoSizeStepGranularityInPx":F
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 7
    .param p1, "presetSizes"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    array-length v3, p1

    .line 309
    .local v3, "presetSizesLength":I
    if-lez v3, :cond_2

    .line 310
    new-array v2, v3, [I

    .line 312
    .local v2, "presetSizesInPx":[I
    if-nez p2, :cond_1

    .line 313
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 324
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 325
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result v4

    if-nez v4, :cond_3

    .line 326
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "None of the preset sizes is valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 327
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 315
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 318
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 319
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "i":I
    .end local v2    # "presetSizesInPx":[I
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 333
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 337
    .end local v3    # "presetSizesLength":I
    :cond_4
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 6
    .param p1, "autoSizeTextType"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 197
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown auto-size text type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->clearAutoSizeConfiguration()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 203
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 205
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 209
    .local v1, "autoSizeMinTextSizeInPx":F
    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 214
    .local v0, "autoSizeMaxTextSizeInPx":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v3}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 218
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setTextSizeInternal(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 596
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 599
    .local v0, "res":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setRawTextSize(F)V

    .line 600
    return-void

    .line 596
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 597
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method
