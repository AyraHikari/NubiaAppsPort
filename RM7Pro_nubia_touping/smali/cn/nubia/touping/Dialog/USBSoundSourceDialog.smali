.class public Lcn/nubia/touping/Dialog/USBSoundSourceDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "USBSoundSourceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOID_BY:I = 0x2

.field private static final ITEM_IDS:[I

.field private static final ITEM_NAMES_ID:[I

.field public static final MIKE:I = 0x3

.field public static final NONE:I = 0x0

.field public static final SYSTEM:I = 0x2

.field public static final SYSTEM_MIKE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundSourceDialog"


# instance fields
.field private mCheckedItemId:I

.field private mContext:Landroid/content/Context;

.field private mListener:Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_IDS:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_NAMES_ID:[I

    return-void

    .line 30
    :array_0
    .array-data 4
        0x7f0e0130
        0x7f0e012d
        0x7f0e012e
        0x7f0e012f
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x7f08007c
        0x7f08007f
        0x7f08007e
        0x7f08007b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mContext:Landroid/content/Context;

    .line 38
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->init()V

    .line 40
    return-void
.end method

.method public static getSoundSourceTypeById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkedItemId"    # I

    .prologue
    .line 93
    if-ltz p1, :cond_0

    sget-object v0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_NAMES_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 94
    :cond_0
    const/4 p1, 0x0

    .line 96
    :cond_1
    sget-object v0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_NAMES_ID:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 43
    sget-object v2, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_IDS:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 44
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "resId":I
    :cond_0
    const v1, 0x7f0e0131

    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getCheckedItemId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mCheckedItemId:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0e0131

    if-ne v5, v6, :cond_2

    .line 52
    iget-object v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    if-eqz v5, :cond_0

    .line 53
    iget-object v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    invoke-interface {v5, p1}, Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;->onNegativeBnClicked(Landroid/view/View;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->dismiss()V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_IDS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 59
    sget-object v5, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_IDS:[I

    aget v3, v5, v2

    .line 60
    .local v3, "resId":I
    invoke-virtual {p0, v3}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcn/nubia/touping/View/SingleChoiceItem;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v3, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Lcn/nubia/touping/View/SingleChoiceItem;->setChecked(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 62
    iget v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mCheckedItemId:I

    if-eq v2, v5, :cond_1

    .line 65
    iget-object v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mListener:Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;

    if-eqz v5, :cond_3

    .line 66
    iget-object v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mListener:Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;

    iget v6, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mCheckedItemId:I

    invoke-interface {v5, v6, v2}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;->onSoundSourceChanged(II)V

    .line 68
    :cond_3
    invoke-virtual {p0, v2}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->setCheckedItem(I)V

    .line 69
    iget-object v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 70
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "SOUND_SOURCE_USB"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    iget-object v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentSound(Landroid/content/Context;I)V

    .line 76
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 77
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->restart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 79
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "resId":I
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->dismiss()V

    .line 85
    iget-object v5, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/touping/Utils/TrackUtils;->sendUSBSoundBy(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setCheckedItem(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 111
    const-string v1, "SoundSourceDialog"

    const-string v2, "error input"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void

    .line 105
    :pswitch_0
    iput p1, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mCheckedItemId:I

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_IDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    sget-object v1, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->ITEM_IDS:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/SingleChoiceItem;

    if-ne v0, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcn/nubia/touping/View/SingleChoiceItem;->setChecked(Z)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnSoundSourceChangedListener(Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->mListener:Lcn/nubia/touping/Dialog/USBSoundSourceDialog$OnSoundSourceChangedListener;

    .line 122
    return-void
.end method
