.class Lcn/nubia/improve/share/ShareMoreActivity$1;
.super Ljava/lang/Object;
.source "ShareMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/share/ShareMoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/ShareMoreActivity;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/ShareMoreActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$1;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$1;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-virtual {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->finish()V

    return-void
.end method
