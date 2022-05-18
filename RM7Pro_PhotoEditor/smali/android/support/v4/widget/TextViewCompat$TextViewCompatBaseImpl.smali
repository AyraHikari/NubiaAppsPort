.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatBaseImpl"
.end annotation


# static fields
.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompatBase"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " field."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TextViewCompatBase"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not retrieve value of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " field."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextViewCompatBase"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getMaxLines(Landroid/widget/TextView;)I
    .locals 2

    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "mMaxMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeField:Ljava/lang/reflect/Field;

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeFieldFetched:Z

    :cond_0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumFieldFetched:Z

    if-nez v0, :cond_1

    const-string v0, "mMaximum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumField:Ljava/lang/reflect/Field;

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumFieldFetched:Z

    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .locals 2

    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "mMinMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeField:Ljava/lang/reflect/Field;

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeFieldFetched:Z

    :cond_0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumFieldFetched:Z

    if-nez v0, :cond_1

    const-string v0, "mMinimum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumField:Ljava/lang/reflect/Field;

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumFieldFetched:Z

    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1, p2, p3}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextAppearance(Landroid/widget/TextView;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method
