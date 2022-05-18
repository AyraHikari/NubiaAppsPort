.class public Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;
.super Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 1226
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;-><init>()V

    .line 1232
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1283
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    .line 1326
    return-void
.end method

.method public setContentDescription(I)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1330
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1335
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1336
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1339
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 1272
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 1273
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1272
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1263
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1264
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1267
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1306
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1297
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1298
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1301
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1287
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1288
    return-void
.end method

.method public setTabListener(Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

    .prologue
    .line 1252
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

    .line 1253
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1242
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1243
    return-object p0
.end method

.method public setText(I)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1320
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1311
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1312
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$1300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1315
    :cond_0
    return-object p0
.end method
