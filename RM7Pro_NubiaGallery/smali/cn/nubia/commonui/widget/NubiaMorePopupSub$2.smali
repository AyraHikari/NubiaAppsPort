.class Lcn/nubia/commonui/widget/NubiaMorePopupSub$2;
.super Ljava/lang/Object;
.source "NubiaMorePopupSub.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaMorePopupSub;->orderByAsc(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopupSub;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopupSub;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$2;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;)I
    .locals 0

    .line 120
    iget p1, p1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->order:I

    iget p2, p2, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->order:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 117
    check-cast p1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    check-cast p2, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$2;->compare(Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;)I

    move-result p1

    return p1
.end method
