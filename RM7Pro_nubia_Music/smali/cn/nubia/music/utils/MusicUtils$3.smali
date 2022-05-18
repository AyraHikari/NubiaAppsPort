.class final Lcn/nubia/music/utils/MusicUtils$3;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/MusicUtils;->createClearRemindDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 3023
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3024
    return-void
.end method
