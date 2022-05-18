.class Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;
.super Ljava/lang/Object;
.source "NubiaMorePopupSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaMorePopupSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuData"
.end annotation


# instance fields
.field isEnable:Z

.field mItem:Ljava/lang/CharSequence;

.field mItemId:I

.field order:I

.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopupSub;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopupSub;Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->mItem:Ljava/lang/CharSequence;

    .line 171
    iput p3, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->mItemId:I

    .line 172
    iput-boolean p5, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->isEnable:Z

    .line 173
    iput p4, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->order:I

    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .line 185
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->order:I

    return v0
.end method

.method public getmItem()Ljava/lang/CharSequence;
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->mItem:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getmItemId()I
    .locals 1

    .line 181
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->mItemId:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->isEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->isEnable:Z

    return-void
.end method

.method public setmItem(Ljava/lang/CharSequence;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->mItem:Ljava/lang/CharSequence;

    return-void
.end method

.method public setmItemId(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->mItemId:I

    return-void
.end method
