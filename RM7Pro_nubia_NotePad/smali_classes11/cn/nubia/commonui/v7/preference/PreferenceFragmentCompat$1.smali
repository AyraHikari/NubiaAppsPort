.class Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$1;
.super Landroid/os/Handler;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$1;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$1;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    invoke-static {v0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->access$100(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
