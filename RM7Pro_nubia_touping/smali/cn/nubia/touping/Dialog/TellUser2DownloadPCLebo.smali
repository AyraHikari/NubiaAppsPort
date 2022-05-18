.class public Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "TellUser2DownloadPCLebo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DOTHAD_tell:I = 0x0

.field public static final HAD_tell:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private nubia_positive_bn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->mContext:Landroid/content/Context;

    .line 30
    const v0, 0x7f040063

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->setContentView(I)V

    .line 31
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->nubia_positive_bn:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->nubia_positive_bn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 38
    .local v0, "viewid":I
    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->mContext:Landroid/content/Context;

    const-string v2, "TELL_DOWNLOAD_PC_LEBO"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->dismiss()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x7f0e009e
        :pswitch_0
    .end packed-switch
.end method
