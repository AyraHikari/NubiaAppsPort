.class Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RippleDrawableZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/RippleDrawableZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RippleState"
.end annotation


# instance fields
.field private mColor:Landroid/content/res/ColorStateList;

.field private mLayerState:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mMaxRadius:I

.field final synthetic this$0:Lcom/zte/mifavor/widget/RippleDrawableZTE;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/RippleDrawableZTE;Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->this$0:Lcom/zte/mifavor/widget/RippleDrawableZTE;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/high16 p1, 0x1a000000

    .line 237
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_0

    .line 242
    iget-object p1, p2, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 243
    iget p1, p2, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mMaxRadius:I

    iput p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mMaxRadius:I

    .line 245
    :cond_0
    iput-object p3, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mLayerState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)I
    .locals 0

    .line 235
    iget p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mMaxRadius:I

    return p0
.end method

.method static synthetic access$002(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;I)I
    .locals 0

    .line 235
    iput p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mMaxRadius:I

    return p1
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mLayerState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->mLayerState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 251
    new-instance v0, Lcom/zte/mifavor/widget/RippleDrawableZTE;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;-><init>()V

    .line 252
    invoke-static {v0, p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->access$402(Lcom/zte/mifavor/widget/RippleDrawableZTE;Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    return-object v0
.end method
