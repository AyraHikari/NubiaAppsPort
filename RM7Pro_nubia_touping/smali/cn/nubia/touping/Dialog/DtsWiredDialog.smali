.class public Lcn/nubia/touping/Dialog/DtsWiredDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "DtsWiredDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DEFAULT_DTS_WIRED:I = 0x2

.field public static final DTS_EARPHONE_MODE:I = 0x2

.field public static final DTS_STEP_UP:I = 0x1

.field private static final ITEM_IDS:[I

.field private static final ITEM_NAMES_ID:[I

.field private static final TAG:Ljava/lang/String; = "SoundSourceDialog"


# instance fields
.field private mCheckedItemId:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_IDS:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_NAMES_ID:[I

    return-void

    .line 31
    :array_0
    .array-data 4
        0x7f0e0129
        0x7f0e012a
        0x7f0e012b
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x7f0800ad
        0x7f0800af
        0x7f0800ae
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mContext:Landroid/content/Context;

    .line 39
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->init()V

    .line 41
    return-void
.end method

.method public static getSoundDtsTypeById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkedItemId"    # I

    .prologue
    .line 88
    if-ltz p1, :cond_0

    sget-object v0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_NAMES_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 89
    :cond_0
    const/4 p1, 0x0

    .line 91
    :cond_1
    sget-object v0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_NAMES_ID:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 44
    sget-object v2, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_IDS:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 45
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "resId":I
    :cond_0
    const v1, 0x7f0e012c

    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getCheckedItemId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mCheckedItemId:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e012c

    if-ne v4, v5, :cond_1

    .line 56
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->dismiss()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_IDS:[I

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 60
    sget-object v4, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_IDS:[I

    aget v2, v4, v1

    .line 61
    .local v2, "resId":I
    invoke-virtual {p0, v2}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/touping/View/SingleChoiceItem;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v2, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Lcn/nubia/touping/View/SingleChoiceItem;->setChecked(Z)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 63
    iget v4, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mCheckedItemId:I

    if-eq v1, v4, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->setCheckedItem(I)V

    .line 70
    iget-object v4, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 71
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "SOUND_DTS_WIRED"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 76
    .end local v2    # "resId":I
    :cond_4
    iget-object v4, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2AudioForDtsUserSelected(Landroid/content/Context;Z)V

    .line 78
    iget-object v4, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentDtsSelectedStatus(Landroid/content/Context;Z)V

    .line 79
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->dismiss()V

    .line 80
    iget-object v4, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/touping/Utils/TrackUtils;->sendUSBDTSSoundBy(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setCheckedItem(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 105
    const-string v1, "SoundSourceDialog"

    const-string v2, "error input"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void

    .line 99
    :pswitch_0
    iput p1, p0, Lcn/nubia/touping/Dialog/DtsWiredDialog;->mCheckedItemId:I

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_IDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 101
    sget-object v1, Lcn/nubia/touping/Dialog/DtsWiredDialog;->ITEM_IDS:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/SingleChoiceItem;

    if-ne v0, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcn/nubia/touping/View/SingleChoiceItem;->setChecked(Z)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
