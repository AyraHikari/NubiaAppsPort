.class public Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "ScreenProjectionQualityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final EXTREMELY_CLEAR:I = 0x3

.field private static final ITEM_IDS:[I

.field private static final ITEM_NAMES_ID:[I

.field public static final QUALITY_HIGH:I = 0x0

.field public static final QUALITY_LOW:I = 0x2

.field public static final QUALITY_NORMAL:I = 0x1

.field public static final QUALITY_UHD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ScreenProjectionQualityDialog"


# instance fields
.field private mCheckedItemId:I

.field private mContext:Landroid/content/Context;

.field private mListener:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_IDS:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_NAMES_ID:[I

    return-void

    .line 31
    :array_0
    .array-data 4
        0x7f0e011f
        0x7f0e0120
        0x7f0e0121
        0x7f0e011d
        0x7f0e011e
    .end array-data

    .line 35
    :array_1
    .array-data 4
        0x7f080072
        0x7f080075
        0x7f080074
        0x7f080071
        0x7f080073
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mContext:Landroid/content/Context;

    .line 42
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->init()V

    .line 44
    return-void
.end method

.method public static getQualityTypeById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkedItemId"    # I

    .prologue
    .line 91
    if-ltz p1, :cond_0

    sget-object v0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_NAMES_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 92
    :cond_0
    const/4 p1, 0x0

    .line 94
    :cond_1
    sget-object v0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_NAMES_ID:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 47
    sget-object v2, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_IDS:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 48
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "resId":I
    :cond_0
    const v1, 0x7f0e0122

    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getCheckedItemId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mCheckedItemId:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0122

    if-ne v4, v5, :cond_2

    .line 56
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    if-eqz v4, :cond_0

    .line 57
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    invoke-interface {v4, p1}, Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;->onNegativeBnClicked(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->dismiss()V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_IDS:[I

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 63
    sget-object v4, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_IDS:[I

    aget v2, v4, v1

    .line 64
    .local v2, "resId":I
    invoke-virtual {p0, v2}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/touping/View/SingleChoiceItem;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v2, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Lcn/nubia/touping/View/SingleChoiceItem;->setChecked(Z)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 66
    iget v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mCheckedItemId:I

    if-eq v4, v1, :cond_1

    .line 69
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;

    if-eqz v4, :cond_3

    .line 70
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;

    iget v5, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mCheckedItemId:I

    invoke-interface {v4, v5, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;->onQualityChanged(II)V

    .line 72
    :cond_3
    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->setCheckedItem(I)V

    .line 73
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 74
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "SCREEN_PROJECTION_QUALITY_20210706"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/touping/Utils/LeBoOprate;->changeMirrorQuality(Landroid/content/Context;)V

    .line 78
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/touping/Utils/TrackUtils;->sendScreenQuality(Landroid/content/Context;)V

    .line 80
    iget-object v4, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentBitrate(Landroid/content/Context;I)V

    .line 62
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 83
    .end local v2    # "resId":I
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->dismiss()V

    goto :goto_0
.end method

.method public setCheckedItem(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 111
    const-string v1, "ScreenProjectionQualityDialog"

    const-string v2, "error input"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iput p1, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mCheckedItemId:I

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_IDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 106
    sget-object v1, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->ITEM_IDS:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/SingleChoiceItem;

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Lcn/nubia/touping/View/SingleChoiceItem;->setChecked(Z)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 108
    :cond_1
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->onChangeQuality(I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnQualityChangedListener(Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog$OnQualityChangedListener;

    .line 122
    return-void
.end method
