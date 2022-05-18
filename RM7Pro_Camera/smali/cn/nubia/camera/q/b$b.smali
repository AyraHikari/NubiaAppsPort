.class Lcn/nubia/camera/q/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/q/b;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/q/b;Lcn/nubia/camera/q/b$1;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/b$b;-><init>(Lcn/nubia/camera/q/b;)V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2

    .line 1108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.intent.videoeditor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 1109
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    iget-object p1, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/q/b;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const-string v0, "video/"

    .line 1100
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/b$b;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string v0, "image/"

    .line 1102
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1103
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/b$b;->b(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .line 1130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 1132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cn.nubia.photoeditor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 1131
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private b(Landroid/net/Uri;)V
    .locals 5

    .line 1115
    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/q/b$b;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "android.intent.action.EDIT"

    const-string v4, "image/*"

    if-eqz v0, :cond_0

    .line 1116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cn.nubia.photoeditor"

    .line 1118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1119
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 1120
    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/q/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1122
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1123
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 1125
    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/q/b;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const-string p1, "mime_type"

    .line 1070
    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    .line 1071
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    .line 1072
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    .line 1073
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->e()Lcn/nubia/l/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    .line 1074
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->e()Lcn/nubia/l/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1080
    iget-object v1, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v1}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/l/a/b;->e()Lcn/nubia/l/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object v1

    .line 1082
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/q/b$b;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v3}, Lcn/nubia/camera/q/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "media"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1084
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_2

    .line 1087
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1088
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1089
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1090
    invoke-direct {p0, v1, p1}, Lcn/nubia/camera/q/b$b;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1093
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v2
.end method
