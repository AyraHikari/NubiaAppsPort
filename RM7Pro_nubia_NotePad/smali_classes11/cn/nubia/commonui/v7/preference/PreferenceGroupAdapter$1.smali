.class Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$1;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$1;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;

    invoke-static {v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->access$000(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;)V

    .line 83
    return-void
.end method
