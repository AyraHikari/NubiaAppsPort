.class public Lcn/nubia/improve/slideshow/SlideShowShortcuts;
.super Landroid/app/Activity;
.source "SlideShowShortcuts.java"


# static fields
.field public static final KEY_ALBUM_PATHS:Ljava/lang/String; = "album-paths"

.field public static final KEY_GET_ALBUMS:Ljava/lang/String; = "get-albums"

.field public static final KEY_TYPE:Ljava/lang/String; = "show-type"

.field private static final REQUEST_CHOOSE_ALBUM:I = 0x2

.field private static final REQUEST_WIDGET_TYPE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private SetAlbumPath(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 163
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "slideshow_albumPaths"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private StartSlideShow(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/gallery3d/app/Gallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "start_SLIDESHOW"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "album-paths"

    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "slideshow"

    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->finish()V

    return-void
.end method

.method private getAlbumPath()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "slideshow_albumPaths"

    const/4 v2, 0x0

    .line 174
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 177
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private setType(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "show-type"

    const v1, 0x7f0901b6

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f0901a7

    if-ne p1, v0, :cond_0

    .line 137
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/gallery3d/app/Gallery;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.MAIN"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "get-albums"

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 140
    invoke-virtual {p0, p1, v0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0901a9

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->StartSlideShow(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->getAlbumPath()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->StartSlideShow(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private setupShortcut()V
    .locals 3

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 104
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f100032

    .line 105
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f0800df

    .line 106
    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 112
    invoke-virtual {p0, v0, v1}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->finish()V

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 123
    invoke-direct {p0, p3}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->setType(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "album-paths"

    .line 125
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->StartSlideShow(Ljava/util/ArrayList;)V

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->SetAlbumPath(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    .line 130
    :cond_2
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown request: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->setupShortcut()V

    .line 81
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->finish()V

    return-void

    .line 85
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->getAlbumPath()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v2, "hasAlbumPath"

    .line 88
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, p1, v1}, Lcn/nubia/improve/slideshow/SlideShowShortcuts;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
