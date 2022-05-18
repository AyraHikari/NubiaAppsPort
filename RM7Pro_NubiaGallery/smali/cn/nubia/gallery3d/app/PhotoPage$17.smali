.class Lcn/nubia/gallery3d/app/PhotoPage$17;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->SetAsPrivate(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$17;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "PhotoPage"

    const-string p2, "cancel"

    .line 1345
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$17;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3100(Lcn/nubia/gallery3d/app/PhotoPage;)V

    return-void
.end method
