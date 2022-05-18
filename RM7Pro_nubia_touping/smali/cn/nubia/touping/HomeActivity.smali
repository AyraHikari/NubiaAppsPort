.class public Lcn/nubia/touping/HomeActivity;
.super Lcn/nubia/touping/AbstractActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private PCShowTextInfo:Landroid/widget/TextView;

.field private TVShowTextInfo:Landroid/widget/TextView;

.field private homeTitle:Landroid/widget/TextView;

.field private home_settings:Landroid/widget/ImageView;

.field private mirrorPCBtn:Landroid/widget/Button;

.field private mirrorTVBtn:Landroid/widget/Button;

.field private myStopMediaCodecRevceiver:Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;-><init>()V

    .line 71
    new-instance v0, Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;-><init>(Lcn/nubia/touping/HomeActivity;Lcn/nubia/touping/HomeActivity$1;)V

    iput-object v0, p0, Lcn/nubia/touping/HomeActivity;->myStopMediaCodecRevceiver:Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/touping/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/HomeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/touping/HomeActivity;->refreshInMainThread()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/touping/HomeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    return-void
.end method

.method private dealWithMirrorStatus(I)Z
    .locals 7
    .param p1, "viewId"    # I

    .prologue
    const v6, 0x7f0e00ab

    const v5, 0x7f0e00a8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 278
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v1

    .line 279
    .local v1, "isPlayMirrorStatus":Z
    if-eqz v1, :cond_1

    .line 280
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v2

    .line 281
    .local v2, "isPlayingPc":Z
    if-ne p1, v5, :cond_0

    .line 282
    if-nez v2, :cond_1

    .line 283
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopMirrorTouPing()V

    .line 284
    invoke-direct {p0, v1}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    .line 309
    .end local v2    # "isPlayingPc":Z
    :goto_0
    return v3

    .line 287
    .restart local v2    # "isPlayingPc":Z
    :cond_0
    if-ne p1, v6, :cond_1

    .line 288
    if-eqz v2, :cond_1

    .line 289
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopMirrorTouPing()V

    .line 290
    invoke-direct {p0, v1}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    goto :goto_0

    .line 296
    .end local v2    # "isPlayingPc":Z
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v0

    .line 297
    .local v0, "isPlayMiracastStatus":Z
    if-eqz v0, :cond_3

    .line 299
    if-ne p1, v5, :cond_2

    .line 300
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    .line 301
    invoke-direct {p0, v4}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    goto :goto_0

    .line 303
    :cond_2
    if-ne p1, v6, :cond_3

    .line 304
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    .line 305
    invoke-direct {p0, v4}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 309
    goto :goto_0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/HomeActivity;->homeTitle:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcn/nubia/touping/HomeActivity;->homeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/HomeActivity;->TVShowTextInfo:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e00ac

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/HomeActivity;->PCShowTextInfo:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/touping/HomeActivity;->home_settings:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcn/nubia/touping/HomeActivity;->home_settings:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f0e00ab

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private refreshInMainThread()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/HomeActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/HomeActivity$1;-><init>(Lcn/nubia/touping/HomeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method private refreshView(Z)V
    .locals 11
    .param p1, "currentMorrorStatus"    # Z

    .prologue
    .line 188
    const-string v8, "HASAGREECTAAGREEMENT"

    invoke-static {p0, v8}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 189
    .local v0, "ctaFlag":Z
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    if-eqz v8, :cond_0

    .line 190
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcn/nubia/touping/Utils/DialogManager;->getDialogByFlag(I)Lcn/nubia/touping/Dialog/BaseDialog;

    move-result-object v2

    .line 191
    .local v2, "dialog":Lcn/nubia/touping/Dialog/BaseDialog;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/nubia/touping/Dialog/BaseDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 192
    invoke-virtual {v2}, Lcn/nubia/touping/Dialog/BaseDialog;->dismiss()V

    .line 195
    .end local v2    # "dialog":Lcn/nubia/touping/Dialog/BaseDialog;
    :cond_0
    const-string v8, "HomeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentMorrorStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f020088

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 197
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f020088

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 200
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v5

    .line 202
    .local v5, "nubiaMiracastTouPingStatus":Z
    const-string v8, "HomeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changlei nubiaMiracastTouPingStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v6

    .line 206
    .local v6, "nubiaPCMirrorStatus":Z
    if-eqz p1, :cond_4

    .line 207
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v3

    .line 208
    .local v3, "isPlayingPc":Z
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    iget-object v9, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    if-nez v3, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getCurrentLinkDeviceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v4

    .line 212
    .local v4, "mlLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    const-string v1, ""

    .line 213
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 214
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_1
    if-eqz v3, :cond_3

    .line 217
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f080023

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 218
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f080022

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 219
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f020089

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 220
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->TVShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080041

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f08003f

    invoke-virtual {p0, v9}, Lcn/nubia/touping/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "showInfo":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->PCShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080040

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 256
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "isPlayingPc":Z
    .end local v4    # "mlLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .end local v7    # "showInfo":Ljava/lang/String;
    :goto_1
    return-void

    .line 209
    .restart local v3    # "isPlayingPc":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 224
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local v4    # "mlLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    :cond_3
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f080024

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 225
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f020089

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f080021

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f08003f

    invoke-virtual {p0, v9}, Lcn/nubia/touping/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 228
    .restart local v7    # "showInfo":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->TVShowTextInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->PCShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080040

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 231
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "isPlayingPc":Z
    .end local v4    # "mlLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .end local v7    # "showInfo":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_6

    .line 232
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f080023

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 233
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f080022

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 234
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    iget-object v9, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    if-nez v6, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f020089

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 237
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->TVShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080041

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 238
    const-string v1, " \u8bbe\u5907\u540d\u79f0 "

    .line 239
    .restart local v1    # "deviceName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f08003f

    invoke-virtual {p0, v9}, Lcn/nubia/touping/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 240
    .restart local v7    # "showInfo":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->PCShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080040

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 235
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v7    # "showInfo":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 241
    :cond_6
    if-eqz v5, :cond_7

    .line 242
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f080024

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 243
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f020089

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 244
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f080021

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f08003f

    invoke-virtual {p0, v9}, Lcn/nubia/touping/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getMiracastTouPingDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 246
    .restart local v7    # "showInfo":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->TVShowTextInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->PCShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080040

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 249
    .end local v7    # "showInfo":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    const v9, 0x7f080023

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 252
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->mirrorPCBtn:Landroid/widget/Button;

    const v9, 0x7f080021

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 253
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->TVShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080041

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v8, p0, Lcn/nubia/touping/HomeActivity;->PCShowTextInfo:Landroid/widget/TextView;

    const v9, 0x7f080040

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "action.stop.NubiaWirelessTouPingForIntentBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "cn.nubia.add.display.wfd.CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "cn.nubia.add.display.wfd.DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcn/nubia/touping/HomeActivity;->myStopMediaCodecRevceiver:Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method private unRegisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/touping/HomeActivity;->myStopMediaCodecRevceiver:Lcn/nubia/touping/HomeActivity$StopMediaCodecRevceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 315
    const/16 v4, 0x67

    if-ne p1, v4, :cond_4

    .line 316
    invoke-virtual {p0}, Lcn/nubia/touping/HomeActivity;->dealWithInitSDK()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v4, "android.permission.CAMERA"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 320
    .local v0, "checkResult":Z
    :goto_1
    if-nez v0, :cond_3

    .line 321
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkResult":Z
    :cond_2
    move v0, v3

    .line 319
    goto :goto_1

    .line 324
    .restart local v0    # "checkResult":Z
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/touping/HomeActivity;->restoreAllStatusValue()V

    .line 325
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xde

    invoke-virtual {p0, v1, v2}, Lcn/nubia/touping/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 329
    .end local v0    # "checkResult":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const/16 v2, 0x66

    if-ne p1, v2, :cond_5

    .line 330
    invoke-virtual {p0}, Lcn/nubia/touping/HomeActivity;->dealWithInitSDK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    iget-object v2, p0, Lcn/nubia/touping/HomeActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showChooseDeviceDialog()V

    goto :goto_0

    .line 336
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/touping/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/LogShow;->click(Landroid/content/Context;)V

    goto :goto_0

    .line 122
    :pswitch_2
    const-string v8, "HomeActivitychanglei888999  changlei"

    const-string v9, "begin settings click 33333333333"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v7, "settings":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcn/nubia/touping/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    .end local v7    # "settings":Landroid/content/Intent;
    :pswitch_3
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v10}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    move v0, v8

    .line 130
    .local v0, "checkResult":Z
    :goto_1
    if-nez v0, :cond_2

    .line 131
    new-array v8, v8, [Ljava/lang/String;

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v10, v8, v9

    const/16 v9, 0x3db

    invoke-static {p0, v8, v9}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkResult":Z
    :cond_1
    move v0, v9

    .line 129
    goto :goto_1

    .line 134
    .restart local v0    # "checkResult":Z
    :cond_2
    const v8, 0x7f0e00a8

    invoke-direct {p0, v8}, Lcn/nubia/touping/HomeActivity;->dealWithMirrorStatus(I)Z

    move-result v6

    .line 135
    .local v6, "returnResultTV":Z
    if-nez v6, :cond_0

    .line 136
    const-string v8, "CHOOSEN_DEVICE"

    const-string v9, "TV"

    invoke-static {p0, v8, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcn/nubia/touping/MainActivity;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "from"

    const/16 v9, 0x66

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v1}, Lcn/nubia/touping/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/WfdConfigUtils;->saveMiracastTouPingQuality(Landroid/content/Context;)V

    goto :goto_0

    .line 144
    .end local v0    # "checkResult":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v6    # "returnResultTV":Z
    :pswitch_4
    const v8, 0x7f0e00ab

    invoke-direct {p0, v8}, Lcn/nubia/touping/HomeActivity;->dealWithMirrorStatus(I)Z

    move-result v5

    .line 145
    .local v5, "returnResultPC":Z
    const-string v8, "HomeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "222212  returnResultPC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-nez v5, :cond_0

    .line 148
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v4

    .line 149
    .local v4, "nubiaPCMirrorStatus":Z
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->isMonkeyRunning()Z

    move-result v3

    .line 150
    .local v3, "isMonkeyRunning":Z
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 151
    const-string v8, "HomeActivity"

    const-string v9, "isMonkeyRunning,stop was canceld"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_3
    const-string v8, "HomeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "222212  nubiaPCMirrorStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz v4, :cond_4

    .line 156
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0}, Lcn/nubia/touping/HomeActivity;->refreshInMainThread()V

    goto/16 :goto_0

    .line 161
    :cond_4
    const-string v8, "CHOOSEN_DEVICE"

    const-string v9, "PC"

    invoke-static {p0, v8, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcn/nubia/touping/MainActivity;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v2, "intent1":Landroid/content/Intent;
    const-string v8, "from"

    const/16 v9, 0x67

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v2}, Lcn/nubia/touping/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x7f0e00a5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcn/nubia/touping/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "HomeActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HomeActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcn/nubia/touping/HomeActivity;->initViews()V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->onDestroy()V

    .line 112
    const-string v0, "HomeActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->onPause()V

    .line 106
    invoke-direct {p0}, Lcn/nubia/touping/HomeActivity;->unRegisterBroadcastReceiver()V

    .line 107
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 341
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/touping/AbstractActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 342
    const/16 v1, 0x3db

    if-ne p1, v1, :cond_0

    .line 343
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 344
    .local v0, "checkResult":Z
    :goto_0
    if-nez v0, :cond_2

    .line 345
    invoke-virtual {p0}, Lcn/nubia/touping/HomeActivity;->initData()V

    .line 346
    iget-object v1, p0, Lcn/nubia/touping/HomeActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v1}, Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialog()V

    .line 351
    .end local v0    # "checkResult":Z
    :cond_0
    :goto_1
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 349
    .restart local v0    # "checkResult":Z
    :cond_2
    iget-object v1, p0, Lcn/nubia/touping/HomeActivity;->mirrorTVBtn:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcn/nubia/touping/HomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->onResume()V

    .line 98
    const-string v0, "HomeActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcn/nubia/touping/HomeActivity;->refreshInMainThread()V

    .line 100
    invoke-direct {p0}, Lcn/nubia/touping/HomeActivity;->registerBroadcastReceiver()V

    .line 101
    return-void
.end method

.method protected refreshViewByHandleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 260
    if-nez p1, :cond_0

    .line 275
    :goto_0
    :sswitch_0
    return-void

    .line 261
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 266
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    goto :goto_0

    .line 269
    :sswitch_2
    invoke-direct {p0, v1}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    goto :goto_0

    .line 272
    :sswitch_3
    invoke-direct {p0, v1}, Lcn/nubia/touping/HomeActivity;->refreshView(Z)V

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x16 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1c -> :sswitch_3
    .end sparse-switch
.end method
