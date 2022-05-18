.class Lcn/nubia/touping/PCMirrorActivity$2;
.super Ljava/lang/Object;
.source "PCMirrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/PCMirrorActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/PCMirrorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/PCMirrorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/PCMirrorActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/touping/PCMirrorActivity$2;->this$0:Lcn/nubia/touping/PCMirrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity$2;->this$0:Lcn/nubia/touping/PCMirrorActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/PCMirrorActivity;->finish()V

    .line 92
    return-void
.end method
