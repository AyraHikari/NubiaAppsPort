.class Lcn/nubia/improve/share/ShareMoreActivity$3;
.super Ljava/lang/Object;
.source "ShareMoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 88
    iput-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 91
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$000(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$000(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const p5, 0x186a0

    div-int/2addr p1, p5

    sget p5, Lcn/nubia/improve/share/ShareUtils;->FENGSHENG_USER_ID:I

    if-eq p1, p5, :cond_3

    .line 92
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mUris.size():"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p5, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p5}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "mUris.get(0).toString()"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p5, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p5}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/net/Uri;

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "ShareMoreActivity"

    invoke-static {p5, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string p5, "android.intent.extra.STREAM"

    if-ne p1, p2, :cond_0

    .line 96
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$200(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p2}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/16 p2, 0x9

    if-le p1, p2, :cond_1

    .line 98
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$000(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareUtils;->isShareToWechat(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$200(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    .line 100
    invoke-static {v1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p4, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    invoke-virtual {p1, p5, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$200(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p2}, Lcn/nubia/improve/share/ShareMoreActivity;->access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 106
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$300(Lcn/nubia/improve/share/ShareMoreActivity;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p2}, Lcn/nubia/improve/share/ShareMoreActivity;->access$200(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    :try_start_0
    const-string p1, "android.os.UserHandle"

    .line 109
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p5, p2, [Ljava/lang/Class;

    .line 110
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p5, p4

    invoke-virtual {p1, p5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p5, p2, [Ljava/lang/Object;

    .line 111
    sget v0, Lcn/nubia/improve/share/ShareUtils;->FENGSHENG_USER_ID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, p4

    invoke-virtual {p1, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p5, "android.app.Activity"

    .line 112
    invoke-static {p5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p5

    const-string v0, "startActivityAsUser"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 113
    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, p4

    const-class v3, Landroid/os/UserHandle;

    aput-object v3, v2, p2

    invoke-virtual {p5, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    .line 115
    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {v0}, Lcn/nubia/improve/share/ShareMoreActivity;->access$300(Lcn/nubia/improve/share/ShareMoreActivity;)Landroid/app/Activity;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {v2}, Lcn/nubia/improve/share/ShareMoreActivity;->access$200(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p4

    aput-object p1, v1, p2

    invoke-virtual {p5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_1
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$400(Lcn/nubia/improve/share/ShareMoreActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 121
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$300(Lcn/nubia/improve/share/ShareMoreActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$500(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$600(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$700(Lcn/nubia/improve/share/ShareMoreActivity;)I

    move-result v3

    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    .line 122
    invoke-static {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->access$800(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v5

    move v4, p3

    .line 121
    invoke-static/range {v0 .. v5}, Lcn/nubia/improve/share/ShareUtils;->saveShareSorts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;)V

    .line 124
    :cond_4
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$3;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-virtual {p1}, Lcn/nubia/improve/share/ShareMoreActivity;->finish()V

    return-void
.end method
