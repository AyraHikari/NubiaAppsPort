.class public Lcom/zte/mifavor/custom/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlertController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AlertController_getDialogStyle([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 38
    aget-object p0, p0, v0

    check-cast p0, Landroid/content/Context;

    .line 39
    invoke-static {p0}, Lcom/zte/mifavor/custom/Config;->isMifavorTheme(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x7

    .line 43
    new-array p0, p0, [Ljava/lang/Object;

    .line 44
    sget v1, Lcom/zte/extres/R$layout;->alert_dialog_material_mfv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    .line 45
    sget v1, Lcom/zte/extres/R$layout;->select_dialog_material_mfv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x3

    .line 46
    sget v1, Lcom/zte/extres/R$layout;->select_dialog_multichoice_material_mfv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x4

    .line 47
    sget v1, Lcom/zte/extres/R$layout;->select_dialog_singlechoice_material_mfv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x5

    .line 48
    sget v1, Lcom/zte/extres/R$layout;->select_dialog_item_material_mfv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v0, "AlertController"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogRes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static setupView_begin([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    .line 75
    aget-object v1, p0, v0

    check-cast v1, Landroid/content/Context;

    .line 76
    invoke-static {v1}, Lcom/zte/mifavor/custom/Config;->isMifavorTheme(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "AlertController"

    const-string v3, "setup begin"

    .line 80
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 81
    aget-object v3, p0, v1

    check-cast v3, Landroid/view/Window;

    const/16 v4, 0xb

    .line 82
    new-array v4, v4, [I

    sget v5, Lcom/zte/extres/R$id;->parentPanel:I

    aput v5, v4, v0

    sget v5, Lcom/zte/extres/R$id;->topPanel:I

    aput v5, v4, v1

    const/4 v1, 0x2

    sget v5, Lcom/zte/extres/R$id;->contentPanel:I

    aput v5, v4, v1

    const/4 v1, 0x3

    sget v5, Lcom/zte/extres/R$id;->customPanel:I

    aput v5, v4, v1

    const/4 v1, 0x4

    sget v5, Lcom/zte/extres/R$id;->buttonPanel:I

    aput v5, v4, v1

    sget v1, Lcom/zte/extres/R$id;->title_template:I

    const/4 v5, 0x5

    aput v1, v4, v5

    const/4 v1, 0x6

    sget v6, Lcom/zte/extres/R$id;->alertTitle:I

    aput v6, v4, v1

    const/4 v1, 0x7

    sget v6, Lcom/zte/extres/R$id;->titleDividerNoCustom:I

    aput v6, v4, v1

    const/16 v1, 0x8

    sget v6, Lcom/zte/extres/R$id;->scrollView:I

    aput v6, v4, v1

    const/16 v1, 0x9

    sget v6, Lcom/zte/extres/R$id;->textSpacerNoTitle:I

    aput v6, v4, v1

    const/16 v1, 0xa

    sget v6, Lcom/zte/extres/R$id;->textSpacerNoButtons:I

    aput v6, v4, v1

    .line 96
    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_2

    .line 97
    aget v1, v4, v0

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    aget-object v6, p0, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static setupView_end([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 126
    aget-object v1, p0, v0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x2

    .line 127
    aget-object v2, p0, v2

    check-cast v2, Landroid/widget/ListView;

    .line 128
    invoke-static {v1}, Lcom/zte/mifavor/custom/Config;->isMifavorTheme(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const-string v1, "AlertController"

    const-string v4, "setup end"

    .line 132
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    .line 133
    aget-object p0, p0, v1

    check-cast p0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result p0

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v1

    invoke-virtual {v2, p0, v0, v1, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_1
    return-object v3
.end method
